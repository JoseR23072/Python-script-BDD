Para ejecutar correctamente el siguiente script tienes que:
    IMPORTANTE
    El sql con la informacion de todos los peces tendras que insertalarla manualmente no se ha logrado hacerlo de
    manera automática. DIRIGETE a peces-informacion.sql haz CTRL+A y copia y pega en phpmyadmin para cargar toda la informacion

    1- Tener instalado python en tu sistema. Puedes comprobarlo con uno de los siguiente comandos:
        pyhton --version
        py --version
    2-Crear un entorno virtual para la instalacion de dependencias
        python -m venv venv
        py -m venv venv
    3-Activa el entorno virtual
        WINDOWS: .\venv\Scripts\activate
        LINUX/MAC: source venv/bin/activate
    4-Instalar las dependencias:
        pip install -r requirements.txt
    5-Por ultimo EJECUTARAS main.py:
        python main.py
        py main.py