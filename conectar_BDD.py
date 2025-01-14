import mysql.connector
from peces_nombres_validos import peces_validos

from variables import password,host,user,port,database

try:
    # Conexión a la base de datos
    connector = mysql.connector.connect(
        host=host,
        port=port,
        user=user,
        password=password,
        database=database  # Opcional si quieres conectarte a una base de datos específica
    )
    
    cursor1 = connector.cursor()

    # Datos del pez que quieres buscar y actualizar
    pez_valido = {"nombre_comun": "Lamprea de río", "nombre_cientifico": "Lampetra fluviatilis"}

    # Ejecutar consulta para obtener el id del pez
    cursor1.execute(f"SELECT id FROM peces WHERE nombre_comun LIKE '%{pez_valido['nombre_comun']}%' OR nombre_cientifico LIKE '%{pez_valido['nombre_cientifico']}%'")
    
    # Almacenar el id del pez en una variable
    pez_id = None

    for pez in cursor1:
        pez_id = pez[0]  # Guardar el primer id encontrado
        print(f"ID encontrado: {pez_id} - Nombre común: {pez_valido['nombre_comun']} - Nombre científico: {pez_valido['nombre_cientifico']}")
        break  # Detener el ciclo después de encontrar el primer pez

    if pez_id:
        # Consulta para actualizar el nombre común y científico utilizando el id
        nuevo_nombre_comun = pez_valido['nombre_comun']
        nuevo_nombre_cientifico = pez_valido["nombre_cientifico"]
        
        update_query = """
        UPDATE Peces
        SET nombre_comun = %s, nombre_cientifico = %s
        WHERE id = %s
        """
        cursor1.execute(f"UPDATE Peces SET nombre_comun = '{nuevo_nombre_comun}', nombre_cientifico = '{nuevo_nombre_cientifico}' WHERE id = {pez_id}")
        connector.commit()  # Guardar los cambios

        print(f"Nombre y nombre científico del pez con ID {pez_id} han sido actualizados.")
    else:
        print("No se encontró el pez con los parámetros especificados.")
    
    connector.close()

except mysql.connector.Error as err:
    print(f"Error: {err}")
