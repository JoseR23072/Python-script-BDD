from BDD.conectar_BDD import actualizar_nombres
from cargar_imagenes_sql import cargar_directorio_sql
from agregar_imagenes import agregar_imagenes_manuales
import os
actualizar_nombres()

directorio_actual=os.path.dirname(os.path.abspath(__file__))
directorio_sql_peces = os.path.join(directorio_actual, "sql_peces")
directorio_rios= os.path.join(directorio_actual,"sql_rios")

cargar_directorio_sql(directorio_sql_peces)
cargar_directorio_sql(directorio_rios)
respuesta=input("Quieres insertar imagenes manualmente: S/N\n")
if(respuesta =="S"):
    agregar_imagenes_manuales()
else:
    print("Se ha cargado la base de datos")