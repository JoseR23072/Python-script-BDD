import os
import shutil

def crear_carpeta_sql(directorio_origen):
    for root, dirs, files in os.walk(directorio_origen):
        print("Directorio actual:", root)
        print("Subcarpetas:", dirs)
        print("Archivos:", files)
        if len(files)>0:
            if files[0].endswith(".sql"):
                ruta_del_archivo_sql=os.path.join(root,files[0])
                ruta_destino=os.path.join(directorio_destino,files[0])

                shutil.copy2(ruta_del_archivo_sql,ruta_destino)
                print(f"se ha copiado {files[0]}")

def contar_cantidad_archivos_en_directorio(directorio_origen):
    for actual, subcarpetas, files in os.walk(directorio_origen):
        print(len(files)) 

def contar_carpetas_en_una_carpeta(directorio):
    for actual,subcarpetas, files in os.walk(directorio):
        return subcarpetas
        
def crear_archivo_sql_para_pez(directorio_destino, nombre_pez,url):
   
    # Asegurarse de que el directorio destino exista
    os.makedirs(directorio_destino, exist_ok=True)
    
    # Crear la ruta completa del archivo .sql
    archivo_sql = os.path.join(directorio_destino, f"{nombre_pez}.sql")
    
    # Escribir la consulta en el archivo
    with open(archivo_sql, "w", encoding="utf-8") as archivo:
        archivo.write(f"UPDATE peces SET imagen='{url}' WHERE nombre_cientifico='{nombre_pez}';")
    

# Directorio raíz del proyecto
project_path = os.path.dirname(os.path.abspath(__file__))

# Ruta de la carpeta de origen
directorio_origen = os.path.join(project_path, "peces_imagenes")

directorio_origen=os.path.join(directorio_origen,"BUSCAR_MANUAL")
#print(directorio_origen)
# Ruta de la carpeta destino
directorio_destino = os.path.join(project_path, "sql_peces")

# Crear la carpeta destino si no existe
#os.makedirs(directorio_destino, exist_ok=True)

sql_faltantes=contar_carpetas_en_una_carpeta(directorio_origen)
for pez in sql_faltantes:
    url=input(f"Estas en el pez {pez} -> di la url\n")
    crear_archivo_sql_para_pez(directorio_destino,pez,url)
