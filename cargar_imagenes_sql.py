import mysql.connector,os,shutil
from constantes import host,password,port,user,database

def cargar_sql_imagenes():
    try:
        # Conexión a la base de datos (solo una vez, fuera del bucle)
        connector = mysql.connector.connect(
            host=host,
            port=port,
            user=user,
            password=password,
            database=database  # Opcional si quieres conectarte a una base de datos específica
        )
        
        cursor1 = connector.cursor()

        directorio_actual=os.path.dirname(os.path.abspath(__file__))
        directorio_origen = os.path.join(directorio_actual, "sql_peces")
        for root, dirs, files in os.walk(directorio_origen):
            for file_name in files:  # Iterar sobre todos los archivos
                if file_name.endswith(".sql"):  # Procesar solo archivos .sql
                    ruta_sql = os.path.join(root, file_name)
                    with open(ruta_sql, "r", encoding="utf-8") as file:
                        query = file.read()
                    cursor1.execute(query)
 
        connector.commit()
        connector.close()
       
        
        
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")

def corregir_errata_sql(directorio_origen):
    for root, dirs, files in os.walk(directorio_origen):
        for file_name in files:
            if file_name.endswith(".sql"):  # Procesar solo archivos .sql
                ruta_sql = os.path.join(root, file_name)
                
                # Leer el archivo y corregir la errata
                with open(ruta_sql, "r", encoding="utf-8") as file:
                    query = file.read()
                
                # Reemplazar "INSER" por "INSERT"
                if "INSERTT" in query:
                    # print(query[7:])
                    query=f"INSERT{query[7:]}"
                if "INSERT INTO" in query:
                    # print(query[7:])
                    query=query.replace("INSERT INTO","UPDATE peces")
                # Guardar el archivo con la corrección
                with open(ruta_sql, "w", encoding="utf-8") as file:
                    file.write(query)
                print(query)
cargar_sql_imagenes()


""" directorio_actual=os.path.dirname(os.path.abspath(__file__))
directorio_origen = os.path.join(directorio_actual, "sql_peces")
corregir_errata_sql(directorio_origen) """