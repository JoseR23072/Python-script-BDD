import requests
from bs4 import BeautifulSoup
import re
from query_peces import nombre_cientifico_peces
from subir_url_imagen import agregar_url
def obtener_enlace_imagen(nombre_imagen):
    """
    Función para obtener el enlace directo de una imagen en Wikipedia.
    Args:
        nombre_imagen (str): Nombre del archivo de la imagen en Wikipedia.
    Returns:
        str: Enlace directo a la imagen, o mensaje de error si no se encuentra.
    """
    url = f"https://es.m.wikipedia.org/wiki/Archivo:{nombre_imagen}"
    respuesta = requests.get(url)
    
    if respuesta.status_code == 200:
        soup = BeautifulSoup(respuesta.text, 'html.parser')
        imagen = soup.find(id="file")  # Buscar la etiqueta con id "file"
        
        if imagen:
            enlace = imagen.find('a')  # Buscar la etiqueta <a> dentro de la etiqueta con id "file"
            if enlace and 'href' in enlace.attrs:  # Asegurarse de que la etiqueta <a> tiene el atributo href
                href = enlace['href']
                href_formateado = "https:" + href  # Completar la URL base
                return href_formateado
            else:
                return "No se encontró el enlace dentro de la etiqueta con id 'file'."
        else:
            return "No se encontró la etiqueta con id 'file'."
    else:
        return f"Error al conectar a la URL: {respuesta.status_code}"




# Iterar sobre la lista
print(nombre_cientifico_peces)
for pez in nombre_cientifico_peces:
    print(f"Buscando información para: {pez}")
    
    # Construir la URL para la API
    url = f"https://es.wikipedia.org/w/rest.php/v1/page/{pez}"
    
    # Realizar la solicitud GET
    respuesta = requests.get(url)
    
    if respuesta.status_code == 200:
        # Convertir el contenido de la respuesta a JSON
        datos_json = respuesta.json()
        
        # Obtener el valor del campo "source"
        source = datos_json.get("source", "")
        
        # Expresión regular para extraer el valor después de "| image = "
        match = re.search(r'\| image = ([^\|]+)', source)

        if match:
            nombre_imagen = match.group(1).strip()  # Limpiar espacios extra
            print(f"Nombre de la imagen encontrada para {pez}: {nombre_imagen}")
            
            # Usar la función para obtener el enlace directo de la imagen
            enlace_imagen = obtener_enlace_imagen(nombre_imagen)
            agregar_url(enlace_imagen,pez)

            print(f"Enlace directo a la imagen para {pez}: {enlace_imagen}")
        else:
            print(f"No se encontró la imagen en el atributo source para {pez}.")
    else:
        print(f"Error al conectar con la API para {pez}: {respuesta.status_code}")

