# Configuración de conexión
host = "localhost"  # No incluir el puerto aquí; se especifica por separado
port = 3306         # Puerto por defecto para MySQL
user = "root"
password = ""
database = "bdpeces"  # Cambia esto por el nombre de tu base de datos

peces_validos = [
    {"nombre_comun": "Lamprea de río", "nombre_cientifico": "Lampetra fluviatilis"},
    {"nombre_comun": "Lamprea de arroyo", "nombre_cientifico": "Lampetra planeri"},
    {"nombre_comun": "Lamprea marina", "nombre_cientifico": "Petromyzon marinus"},
    {"nombre_comun": "Esturión común", "nombre_cientifico": "Acipenser sturio"},
    {"nombre_comun": "Sábalo", "nombre_cientifico": "Alosa alosa"},
    {"nombre_comun": "Saboga", "nombre_cientifico": "Alosa fallax"},
    {"nombre_comun": "Anguila común", "nombre_cientifico": "Anguilla anguilla"},
    {"nombre_comun": "Salmón del Danubio", "nombre_cientifico": "Hucho hucho"},
    {"nombre_comun": "Salmón plateado", "nombre_cientifico": "Oncorhynchus kisutch"},
    {"nombre_comun": "Trucha arcoíris", "nombre_cientifico": "Oncorhynchus mykiss"},
    {"nombre_comun": "Salmón del Atlántico", "nombre_cientifico": "Salmo salar"},
    {"nombre_comun": "Trucha común", "nombre_cientifico": "Salmo trutta"},
    {"nombre_comun": "Salvelino", "nombre_cientifico": "Salvelinus fontinalis"},
    {"nombre_comun": "Lucio Europeo", "nombre_cientifico": "Esox lucius"},
    {"nombre_comun": "Brema blanca", "nombre_cientifico": "Blicca bjoerkna"},
    {"nombre_comun": "Alburno", "nombre_cientifico": "Alburnus alburnus"},
    {"nombre_comun": "Jarabugo", "nombre_cientifico": "Anaecypris hispanica"},
    {"nombre_comun": "Barbo común ibérico", "nombre_cientifico": "Luciobarbus bocagei"},
    {"nombre_comun": "Barbo comizo", "nombre_cientifico": "Luciobarbus comizo"},
    {"nombre_comun": "Barbo de Graells", "nombre_cientifico": "Luciobarbus graellsii"},
    {"nombre_comun": "Barbo mediterráneo", "nombre_cientifico": "Luciobarbus guiraonis"},
    {"nombre_comun": "Barbo colirrojo", "nombre_cientifico": "Barbus haasi"},
    {"nombre_comun": "Barbo de montaña", "nombre_cientifico": "Barbus meridionalis"},
    {"nombre_comun": "Barbo cabecicorto", "nombre_cientifico": "Luciobarbus microcephalus"},
    {"nombre_comun": "Barbo gitano", "nombre_cientifico": "Luciobarbus sclateri"},
    {"nombre_comun": "Pez dorado", "nombre_cientifico": "Carassius auratus"},
    {"nombre_comun": "Bermejuela", "nombre_cientifico": "Achondrostoma arcasii"},
    {"nombre_comun": "Loina", "nombre_cientifico": "Parachondrostoma arrigonis"},
    {"nombre_comun": "Boga del Duero", "nombre_cientifico": "Pseudochondrostoma duriense"},
    {"nombre_comun": "Pardilla", "nombre_cientifico": "Iberochondrostoma lemmingii"},
    {"nombre_comun": "Madrilla", "nombre_cientifico": "Parachondrostoma miegii"},
    {"nombre_comun": "Boga del Tajo", "nombre_cientifico": "Pseudochondrostoma polylepis"},
    {"nombre_comun": "Boga del Guadiana", "nombre_cientifico": "Pseudochondrostoma willkommii"}
]

especies = [
    "Lampetra fluviatilis",
    "Lampetra planeri",
    "Petromyzon marinus",
    "Acipenser sturio",
    
    "Alosa alosa", 
    "Alosa fallax", #esta no esta

    "Anguilla anguilla",

    "Hucho hucho",
    "Oncorhynchus kisutch",
    "Oncorhynchus mykiss",


    "Salmo salar",
    "Salmo trutta",
    "Salvelinus fontinalis",

    #otra ronda
    "Esox lucius",
    "Abramis bjoerkna",
    "Alburnus alburnus",

    "Anaecypris hispanica",
    "Barbus bocagei",
    "Barbus comizo",
    "Barbus graellsii",
    "Barbus guiraonis",




    ##
    "Barbus haasi",
    "Barbus meridionalis",
    "Barbus microcephalus",
    "Barbus sclateri",
    "Carassius auratus",

    "Chondrostoma arcasii",



    ##
    "Chondrostoma arrigonis",
    "Chondrostoma duriense",
    "Chondrostoma lemmingii",
    "Chondrostoma miegii",
    "Chondrostoma polylepis",
    "Chondrostoma turiense",
    "Chondrostoma willkommii"
]
    

especies2=["Cyprinus carpio",
    "Gobio gobio",
    "Phoxinus phoxinus",
    "Rutilus rutilus",
    "Scardinius erythrophthalmus",
    "Squalius alburnoides",
    "Squalius carolitertii",
    "Squalius cephalus",
    "Squalius palaciosi",
    "Squalius pyrenaicus",
    "Tinca tinca",
    "Cobitis calderoni",
    "Cobitis paludica",
    "Cobitis vettonica",
    "Barbatula barbatula",
    "Ameiurus melas",
    "Ictalurus punctatus",
    "Silurus glanis",
    "Aphanius fasciatus",
    "Aphanius iberus",
    "Fundulus heteroclitus",
    "Valencia hispanica",
    "Gambusia holbrooki",
    "Poecilia reticulata",
    "Atherina boyeri",
    "Gasterosteus gymnurus",
    "Cottus gobio",
    "Salaria fluviatilis",
    "Cichlasoma facetum",
    "Lepomis gibbosus",
    "Micropterus salmoides",
    "Perca fluviatilis",
    "Sander lucioperca",
    "Syngnathus abaster"
]

