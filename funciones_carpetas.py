import os
import shutil
import re
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

def crear_archivo_sql_info_pez(directorio,informacion):
    # Asegurarse de que el directorio destino exista
    os.makedirs(directorio, exist_ok=True)

    # Creamos el nombre que tendra el archivo sql
    archivo_sql = os.path.join(directorio, f"{informacion[1]}.sql")

    with open(archivo_sql,"w",encoding="utf-8") as archivo:
        archivo.write(f"INSERT INTO peces (nombre_cientifico,nombre_comun,taxonomia,origen,descripcion,biologia_ecologia,distribucion) VALUES ('{informacion[0]}','{informacion[1]}','{informacion[2]}','{informacion[3]}','{informacion[4]}','{informacion[5]}','{informacion[6]}')")

def dividir_en_array(texto):
    # Usar una expresión regular para capturar el contenido entre comillas simples
    elementos = re.findall(r"'([^']*)'", texto)
    return elementos
def crear_carpeta_sql(texto_origen,directorio_destino):
    # Leer el archivo y corregir la errata
    with open(texto_origen, "r", encoding="utf-8") as txt:
        informacion = txt.read()
    # Usar una expresión regular para capturar todo lo que esté dentro de paréntesis ()
    peces = re.findall(r'\(([^()]*(?:\(.*?\))*[^()]*)\)', informacion, re.DOTALL)

    # Limpiar espacios en blanco y devolver los bloques como lista
    informacion_peces = [pez.strip() for pez in peces] #--> toda la informacion de los peces esta en un string
    #tenemos que obtener cada informacion unica del string y convertirla en array

    for pez in informacion_peces:
        informacion_pez=dividir_en_array(pez)
        crear_archivo_sql_info_pez(directorio_destino,informacion_pez)
        
        



# # Directorio raíz del proyecto
# project_path = os.path.dirname(os.path.abspath(__file__))

# # Ruta de la carpeta de origen
# peces_txt = os.path.join(project_path, "prueba.txt")
# directorio_origen = os.path.join(project_path, "sql_informacion")

# crear_carpeta_sql(peces_txt,directorio_origen)
     
# crear_carpeta_sql(directorio_origen)
# directorio_origen=os.path.join(directorio_origen,"BUSCAR_MANUAL")
# #print(directorio_origen)
# # Ruta de la carpeta destino
# directorio_destino = os.path.join(project_path, "sql_peces")

# # Crear la carpeta destino si no existe
# #os.makedirs(directorio_destino, exist_ok=True)

# sql_faltantes=contar_carpetas_en_una_carpeta(directorio_origen)
# for pez in sql_faltantes:
#     url=input(f"Estas en el pez {pez} -> di la url\n")
#     crear_archivo_sql_para_pez(directorio_destino,pez,url)
