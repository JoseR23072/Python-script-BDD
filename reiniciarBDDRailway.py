import mysql.connector
from constantes import host,password,port,user,database,peces_validos

def reiniciarBDD():
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
        # cursor1.execute("DROP TABLE peces, rios, rios_peces;")
        cursor1.execute("Select id,nombre from rios")
        for pez in cursor1:
            peces.append(f"{pez[0]},{pez[1]}")
        connector.close()
        return peces

        
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")

print(reiniciarBDD())