import mysql.connector
from constantes import host,password,port,database,user

def agregar_url(url,nombre_cientifico):
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
        print("Estoy en la funcion para subir la imagen")
        print(url)
        print(nombre_cientifico)
        # Ejecutar consulta para obtener el id del pez
        cursor1.execute(f"UPDATE peces SET imagen = '{url}' WHERE nombre_cientifico = '{nombre_cientifico}';")

        connector.commit()

    
        connector.close()

    except mysql.connector.Error as err:
        print(f"Error: {err}")
