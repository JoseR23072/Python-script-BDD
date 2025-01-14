import requests
import re
# URL de la API de Wikipedia
url = "https://es.wikipedia.org/w/rest.php/v1/page/"
url=url+"Alburnus_alburnus"

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
        imagen = match.group(1).strip()  # Limpiar espacios extra
        print("Imagen encontrada:", imagen)
        print(imagen)
    else:
        print("No se encontró la imagen en el atributo source.")


else:
    print("Error al conectar con la API:", respuesta.status_code)

