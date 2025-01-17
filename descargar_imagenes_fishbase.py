import requests
import os
from bs4 import BeautifulSoup
import re
from BDD.query_peces import nombre_cientifico_peces
from BDD.conectar_BDD import actualizar_nombres
# from subir_url_imagen import agregar_url

def obtener_imagenes(url,genero,especie):
    respuesta = requests.get(url)
    
    if respuesta.status_code==200:
        soup = BeautifulSoup(respuesta.text, 'html.parser')

        imagenes = soup.find_all('img') 

        # Crear carpeta que contendra todos los peces
        carpeta_principal = "peces_imagenes"
        os.makedirs(carpeta_principal, exist_ok=True)

        # lista para almacenar las imagenes que nos interesan
        imagenes_correctas=[]
        # Iteramos sobre todas las imágenes
        for imagen in imagenes:
            # Obtenemos el valor del atributo 'src' de cada imagen
            src = imagen.get('src', '')
            if re.search(r'../images/thumbnails', src) or re.search(r'/tools/display_image', src):
                div_padre_imagen=imagen.find_parent('a')
                url_img_pequeña=src
                url_img=div_padre_imagen.find('span').find('img').get('src','')

                imagenes_correctas.append((f'https://www.fishbase.se/{url_img[3:]}',f'https://www.fishbase.se/{url_img_pequeña}'))
        # for img in imagenes_correctas:
        #     print(img)
        indice=1
        for enlace,img_pequeño in imagenes_correctas:
            # creamos una carpeta para cada pez
            directorio_destino = os.path.join(carpeta_principal, f"{genero} {especie}")

            os.makedirs(directorio_destino, exist_ok=True)



            # Nombre del archivo para guardar
            nombre_archivo = os.path.join(directorio_destino, f"{genero}-{especie}_{indice}.jpg")

            # Llamar a la función para descargar la imagen
            print(f"directa: {enlace}")
            descargar_imagen(enlace,img_pequeño, nombre_archivo,genero,especie)
            indice=indice+1
        
    else:
        return f"Error al conectar a la URL: {respuesta.status_code}"


def descargar_imagen(url_grande,url_img_pequeña,nombre_archivo,genero,especie):
    try:
        # Hacer la solicitud HTTP para obtener la imagen
        response = requests.get(url_img_pequeña, stream=True)
        
        # Verificar que la solicitud fue exitosa
        if response.status_code == 200:
            # Crear el archivo en modo escritura binaria y guardar la imagen
            with open(nombre_archivo, 'wb') as file:
                for chunk in response.iter_content(1024):
                    file.write(chunk)
            # print(f'Imagen descargada: {nombre_archivo}')

            # Crear un archivo .sql
            nombre_sql = nombre_archivo.replace('.jpg', '.sql')   # Crear un archivo independiente a partir del nombre de la imagen
            if 'https://www.fishbase.se/ols' in url_grande:
                url_grande = url_img_pequeña
            query=f"INSER INTO peces SET imagen='{url_grande}' WHERE nombre_cientifico='{genero} {especie}';"
            
            with open(nombre_sql, 'w') as sql_file:
                sql_file.write(query)
            #print(f'Archivo SQL creado: {nombre_sql}')
        else:
            print(f'Error al descargar la imagen: {url_img_pequeña}')
    except Exception as e:
        print(f'Ocurrió un error: {e}')



def obtener_web_con_imagenes(genero, especie):
    """
    Función para obtener el enlace de la imagen dentro de un contenedor específico de Wikipedia.
    Args:
        genero (str): Género del organismo.
        especie (str): Especie del organismo.
    Returns:
        str: Enlace de la imagen si se encuentra, o mensaje de error.
    """
    url = f"https://www.fishbase.se/summary/{genero}-{especie}.html"
    respuesta = requests.get(url)
    
    if respuesta.status_code == 200:
        soup = BeautifulSoup(respuesta.text, 'html.parser')
        # Buscar el contenedor principal con id 'ss-moreinfo-container'
        contenedor_principal = soup.find(id="ss-moreinfo-container")
        
        if contenedor_principal:
            # Buscar todos los subcontenedores <div class='col-cont'>
            subcontenedores = contenedor_principal.find_all('div', class_='col-cont')
            
            if subcontenedores:
                # Seleccionar el subcontenedor que contiene la taxonomía, por ejemplo, el índice [3]
                padre_contenedor_taxonomia = subcontenedores[3]
                
                # Buscar los subcontenedores dentro del contenedor de taxonomía
                subcontenedor_contenedor_taxonomia = padre_contenedor_taxonomia.find_all('div', class_='categ')[2]
                columna_imagenes=subcontenedor_contenedor_taxonomia.find_all('span')
                # la columna de imagenes corresponde al ultimo span asi que
                span_imagenes=columna_imagenes[-1]
                # el span contiene un a con el atributo hrel a la direccion de donde se guardan las imagenes asi que procedemos a recuperar eso
                enlace_imagenes = span_imagenes.find('a').get('href')
                # este enlace contiene ../ para eliminarlo procedemos a lo sigueiente
                enlace_imagenes=enlace_imagenes[2:]
                # por ultimo obtenemos el enlace final a la carpeta que contiene imagenes sobre ese pez
                enlace_imagenes=f"https://www.fishbase.se"+enlace_imagenes
                
                obtener_imagenes(enlace_imagenes,genero,especie)
                
            else:
                return "No se encontraron subcontenedores <div class='col-cont'> dentro del contenedor principal."
        else:
            return "No se encontró el contenedor principal con id 'ss-moreinfo-container'."
    else:
        return f"Error al conectar a la URL: {respuesta.status_code}"





#actualizar_nombres()

# for pez in nombre_cientifico_peces:
#     split_pez=pez.split(' ')
#     obtener_web_con_imagenes(split_pez[0],split_pez[1])

# obtener_web_con_imagenes("Alburnus","alburnus")
