import requests
from bs4 import BeautifulSoup

url = "https://es.m.wikipedia.org/wiki/Archivo:"
url = url + "Alburnus alburnus 01 by-dpc.jpg"
respuesta = requests.get(url)

if respuesta.status_code == 200:
    soup = BeautifulSoup(respuesta.text, 'html.parser')
    imagen = soup.find(id="file")  # Buscar la etiqueta con id "file"
    
    if imagen:
        enlace = imagen.find('a')  # Buscar la etiqueta <a> dentro de la etiqueta con id "file"
        if enlace and 'href' in enlace.attrs:  # Asegurarse de que la etiqueta <a> tiene el atributo href
            href = enlace['href']
            href_formateado = href[2:]  # Eliminar los dos primeros caracteres usando slicing
            print(href_formateado)
        else:
            print("No se encontró el enlace dentro de la etiqueta con id 'file'.")
    else:
        print("No se encontró la etiqueta con id 'file'.")
else:
    print("Hubo un error en conectar a la URL")
