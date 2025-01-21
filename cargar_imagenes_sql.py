import mysql.connector,os,shutil
from constantes import host,password,port,user,database

def cargar_directorio_sql(directorio):
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

        
        for root, dirs, files in os.walk(directorio):
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
                if "pecesSET" in query:
                    query=query.replace("pecesSET","peces SET")
                # Guardar el archivo con la corrección
                with open(ruta_sql, "w", encoding="utf-8") as file:
                    file.write(query)
                print(query)
# cargar_sql_imagenes()
def cargar_sql_informacion():
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
        ruta_sql = os.path.join(directorio_actual, "peces-informacion.sql")

        with open(ruta_sql,"r",encoding="utf-8") as file:
            querys=file.read()
         # Ejecutar las múltiples declaraciones usando multi=True
         # Ejecutar múltiples declaraciones SQL
        for result in cursor1.execute(querys, multi=True):
            try:
                if result.with_rows:
                    print(f"Resultado: {result.fetchall()}")
                else:
                    print(f"Filas afectadas: {result.rowcount}")
            except mysql.connector.Error as e:
                print(f"Error al procesar el resultado: {e}")

        
        cursor1.commit()
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        # Cerrar la conexión
        if connector.is_connected():
            cursor1.close()
            connector.close()
# directorio_actual=os.path.dirname(os.path.abspath(__file__))
# directorio_origen = os.path.join(directorio_actual, "sql_peces")
# corregir_errata_sql(directorio_origen)
