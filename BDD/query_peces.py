import mysql.connector
import os
from constantes import password,host,user,port,database

nombre_cientifico_peces=[]
try:
    
    
    # creando conexion a la base de datos
    connector = mysql.connector.connect(
        host=host,
        port=port,
        user=user,
        password=password,
        database=database  # Opcional si quieres conectarte a una base de datos específica
    )
    
    cursor = connector.cursor()

   

    # Consulta para obtener los nombres cientificos de la base de datos
    cursor.execute("Select nombre_cientifico from peces")
    
    

    for pez in cursor:
        nombre_cientifico_peces.append(pez[0])
        
    connector.commit()
    cursor.close()
    connector.close()

except mysql.connector.Error as err:
    print(f"Error: {err}")
