from BDD.conectar_BDD import actualizar_nombres
from cargar_imagenes_sql import cargar_directorio_sql
from agregar_imagenes import agregar_imagenes_manuales
from funciones_carpetas import crear_carpeta_sql
from cargar_imagenes_sql import cargar_directorio_sql
import os

directorio_actual=os.path.dirname(os.path.abspath(__file__))

directorio_sql_peces_informacion=os.path.join(directorio_actual,"sql_informacion")

cargar_directorio_sql(directorio_sql_peces_informacion)
actualizar_nombres()

directorio_sql_peces = os.path.join(directorio_actual, "sql_peces") #aqui se cargar las imagenes de peces
directorio_rios= os.path.join(directorio_actual,"sql_rios") #aqui se cargar las imagenes ded rios

cargar_directorio_sql(directorio_sql_peces)
cargar_directorio_sql(directorio_rios)
