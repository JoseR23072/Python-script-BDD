import mysql.connector
from variables import password,host,user,port,database

nombre_cientifico_peces=[]
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


    # Ejecutar consulta para obtener el id del pez
    cursor1.execute("Select nombre_cientifico from peces")
    
    

    for pez in cursor1:
        nombre_cientifico_peces.append(pez[0])

    connector.close()

except mysql.connector.Error as err:
    print(f"Error: {err}")
