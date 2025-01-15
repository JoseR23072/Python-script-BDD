import mysql.connector
from constantes import host,password,port,user,database,peces_validos

def peces_sin_imagenes():
    try:
        peces=[]
        # Conexión a la base de datos (solo una vez, fuera del bucle)
        connector = mysql.connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database  # Opcional si quieres conectarte a una base de datos específica
        )
        
        cursor1 = connector.cursor()
        cursor1.execute("SELECT nombre_cientifico FROM peces WHERE imagen is NULL")
        for pez in cursor1:
            peces.append(pez[0])
        connector.close()
        return peces

        
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")

def actualizar_nombres():
    try:
        peces_no_actualizados=[]
        # Conexión a la base de datos (solo una vez, fuera del bucle)
        connector = mysql.connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database  # Opcional si quieres conectarte a una base de datos específica
        )
        
        cursor1 = connector.cursor()

        # Iterar sobre todos los peces en peces_validos
        for pez_valido in peces_validos:
            # Ejecutar consulta para obtener el id del pez
            cursor1.execute(f"SELECT id FROM peces WHERE nombre_comun LIKE %s OR nombre_cientifico LIKE %s", 
                            (f"%{pez_valido['nombre_comun']}%", f"%{pez_valido['nombre_cientifico']}%"))
            
            # Almacenar el id del pez en una variable
            pez_id = None
            for pez in cursor1:
                pez_id = pez[0]  # Guardar el primer id encontrado
                # print(f"ID encontrado: {pez_id} - Nombre común: {pez_valido['nombre_comun']} - Nombre científico: {pez_valido['nombre_cientifico']}")
                break  # Detener el ciclo después de encontrar el primer pez

            if pez_id:
                # Consulta para actualizar el nombre común y científico utilizando el id
                nuevo_nombre_comun = pez_valido['nombre_comun']
                nuevo_nombre_cientifico = pez_valido["nombre_cientifico"]
                
                # Usar parámetros para evitar inyecciones SQL
                update_query = """
                UPDATE Peces
                SET nombre_comun = %s, nombre_cientifico = %s
                WHERE id = %s
                """
                cursor1.execute(update_query, (nuevo_nombre_comun, nuevo_nombre_cientifico, pez_id))
                connector.commit()  # Guardar los cambios

                # print(f"Nombre y nombre científico del pez con ID {pez_id} han sido actualizados.")
            else:
                # print(f"No se encontró el pez con los parámetros especificados: {pez_valido['nombre_comun']} - {pez_valido['nombre_cientifico']}")
                aux={"nombre_comun":"","nombre_cientifico":""}
                aux["nombre_comun"]=pez_valido["nombre_comun"]
                aux["nombre_cientifico"]=pez_valido["nombre_cientifico"]
                peces_no_actualizados.append(aux)
        
        connector.close()
        print("No se han actualizado los siguientes peces")
        for pez in peces_no_actualizados:
            print(pez)

        # Si necesitas encontrar equivalentes, quita los comentarios
        # obtener los equivalentes
        # equivalentes = encontrar_equivalentes(peces_no_actualizados, especies)

        # Mostrar los resultados
        # print("Equivalentes encontrados:")
        # for nombre_comun, nombre_cientifico in equivalentes.items():
        #     print(f"{nombre_comun} - {nombre_cientifico}")
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")
