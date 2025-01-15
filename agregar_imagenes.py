from BDD.conectar_BDD import peces_sin_imagenes
from funciones_carpetas import crear_archivo_sql_para_pez
import os

# Directorio raíz del proyecto

carpeta_actual = os.path.dirname(os.path.abspath(__file__))

# Ruta de la carpeta de origen
directorio_destino = os.path.join(carpeta_actual, "sql_peces")

for pez in peces_sin_imagenes():
    url=input(f"Estas en el pez {pez} -> di la url\n")
    crear_archivo_sql_para_pez(directorio_destino,pez,url)
    
