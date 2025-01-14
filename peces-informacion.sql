CREATE TABLE IF NOT EXISTS peces (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cientifico VARCHAR(255) NOT NULL,
    nombre_comun VARCHAR(255) NOT NULL,
    taxonomia TEXT,
    autoctona_invasora VARCHAR(100),
    descripcion TEXT,
    biologia_ecologia TEXT,
    distribucion TEXT,
    imagen TEXT
);

INSERT INTO peces (
    nombre_cientifico,
    nombre_comun,
    taxonomia,
    autoctona_invasora,
    descripcion,
    biologia_ecologia,
    distribucion
) VALUES (
    '*Lampetra fluviatilis*',
    'Lamprea de río',
    'Clase: Cephalaspidomorphi, Orden: Petromyzontiformes, Familia: Petromyzontidae',
    'Autóctona',
    'Es una lamprea de tamaño medio que puede alcanzar los 50 cm de longitud total y los 700 g de peso, habiéndose citado ejemplares de hasta 10 años de edad. El cuerpo es cilíndrico y alargado, con siete pares de orificios branquiales bien visibles y boca en forma de ventosa cubierta de escasos y pequeños dientes que utiliza para adherirse a otros peces. Se diferencia de otras lampreas por tener una fila de dientes odontoides en forma de herradura y las dos partes de la aleta dorsal claramente separadas.',
    'Es una especie migradora anádroma, que prefiere ríos con aguas claras y oxigenadas y fondos de arena o grava. Su alimentación está basada en sangre y tejidos de otros peces. Durante la fase invernal que pasan en los ríos no se alimenta. Los juveniles viven en el mar donde comen y crecen hasta alcanzar al menos un año de edad. En otoño suben a los ríos donde realizan la freza, para ello excavan pequeños nidos donde depositan los huevos. Las larvas son filtradoras y viven semienterradas en la arena del río.',
    'España: Antes de extinguirse vivía en la cuenca del Tajo. La última cita conocida en España es en el río Guadarrama, Chozas de Canales, Toledo, en el verano de 1974. Europa: Está presente en Alemania, Bélgica, Dinamarca, Finlandia, Francia, Holanda, Irlanda, Gran Bretaña, Portugal y Suecia. Mundo: Desde el noroeste del Mediterráneo a través del Atlántico hasta el mar Báltico.'
),
(
    '*Lampetra planeri*',
    'Lamprea de arroyo',
    'Clase: Cephalaspidomorphi, Orden: Petromyzontiformes, Familia: Petromyzontidae',
    'Autóctona',
    'Especie de pequeño tamaño que no supera los 20 cm de longitud total. Ventosa bucal con placa preoral ancha y dentículos orales. Cuerpo anguiliforme, sin escamas, con dos aletas dorsales unidas entre sí. No posee miembros pares. La coloración es clara con tonos amarillentos. Larva ammocoetes filtradora carente de pigmentación en la región ventral.',
    'Estrictamente fluvial. En España ocupa un pequeño río cuyo cauce se encuentra a una altitud media, donde cohabita con la trucha común. La estructura del lecho del río es de primordial importancia para esta especie ya que permanece la mayor parte del tiempo en el sedimento. Los hábitats más apropiados son pequeños ríos con moderadas fluctuaciones de profundidad y corriente. La puesta tiene lugar en España a finales de la primavera, desde mediados de abril hasta finales de mayo. Los ejemplares adultos viven sólo durante este corto período de tiempo y no se alimentan. No existe fase parásita.',
    'España: En España sólo se conoce una población en el río Olabidea (Navarra), un río cuyas aguas van a la cuenca del río Adour en Francia. Europa: Alemania, Bélgica, Dinamarca, Finlandia, Francia, Italia, Holanda, Portugal, Suecia y Gran Bretaña. Mundo: Se distribuye por la mayor parte de Europa desde Suecia hasta el norte de España. Existen citas en Portugal que necesitan confirmación.'
),
(
    '*Petromyzon marinus*',
    'Lamprea marina',
    'Clase: Cephalaspidomorphi, Orden: Petromyzontiformes, Familia: Petromyzontidae',
    'Autóctona',
    'El tamaño de esta especie migradora, puede ser superior a 50 cm de longitud total, alcanzando más de un metro en la madurez, con pesos de dos a tres kg. Ventosa bucal con placa preoral pequeña y boca con odontoides agudos. Cuerpo cilíndrico, de color gris, gris-verdoso o pardo. Carece de aletas pares. A los lados del cuerpo tiene siete pares de orificios branquiales visibles y un orificio nasal impar. Dos aletas dorsales.',
    'Especie migradora que nace en los ríos, donde transcurre su vida larvaria hasta adquirir la forma adulta. Los adultos viven en el mar de 20 a 30 meses. La migración río arriba comienza en febrero y dura hasta mayo. En el mar viven a profundidades de 200 a 300 m, con alimentación hematófaga, parasitando principalmente a peces. Al cabo de uno o dos años alcanzan la madurez sexual regresando a los ríos para completar la reproducción.',
    'España: En España se distribuye por la cornisa cantábrica (aunque falta en la mayor parte de los ríos del País Vasco y Cantabria), Galicia, estuario del Guadalquivir, estuario del Guadiaro, Guadalete, Barbate, Guadiana y afluentes y delta del Ebro. Europa: Alemania, Bélgica, Dinamarca, Finlandia, Francia, Grecia, Irlanda, Italia, Holanda, Portugal, Suecia y Gran Bretaña. Mundo: En las costas europeas, desde Escandinavia, en dirección noreste hasta el Mar Blanco, y hacia el sur por todo el Mediterráneo hasta el Adriático.'
),
(
    '*Acipenser sturio*',
    'Esturión, Sollo',
    'Clase: Actinopterygii, Orden: Acipenseriformes, Familia: Acipenseridae',
    'Autóctona',
    'Es una especie de gran talla que puede alcanzar los 3,5 m de longitud total y 300 kg pudiendo vivir hasta un centenar de años. El cuerpo es alargado de sección pentagonal y con una aleta caudal heterocerca. No presenta escamas y el cuerpo está cubierto con pequeños dentículos y cinco filas de placas óseas. Presenta cuatro barbillas y un hocico muy prominente.',
    'Especie anádroma que pasa la mayor parte de su vida en el mar pero se reproduce en las aguas dulces. Vive en el fondo a profundidades de 5 a 60 metros. Se alimenta principalmente de invertebrados, incluyendo pequeños crustáceos, gusanos y moluscos. Los juveniles migran hacia las desembocaduras de los ríos a los cuatro o cinco meses después del nacimiento y permanecen en los estuarios más de un año. La reproducción se realiza entre mayo y finales de junio.',
    'España: Ha sido localizada en cuencas de los ríos Duero, Guadiana y Guadalquivir. Europa: Francia, Alemania y ocasionalmente en Portugal. Mundo: Cuencas del Gironde, Garona y Dordoña en Francia, y en la cuenca del Rioni en Georgia.'
),
(
    '*Alosa alosa*',
    'Sábalo',
    'Clase: Actinopterygii, Orden: Clupeiformes, Familia: Clupeidae',
    'Autóctona',
    'Especie de talla media que puede alcanzar los 83 cm de longitud total y 4 kg de peso. Su cuerpo es esbelto y fusiforme, comprimido lateralmente. Presentan una mancha postopercular. Escamas cicloideas grandes y línea lateral ausente.',
    'Especie migradora anádroma, aunque existen poblaciones aisladas en ríos adaptadas a una vida exclusivamente fluvial. Durante la migración río arriba no se alimenta. La puesta es nocturna y ocurre en agua dulce entre mayo y junio en zonas poco profundas con fondos arenosos y pedregosos.',
    'España: Más frecuente en las costas cantábrica y atlántica que en la mediterránea. Europa: Alemania, Bélgica, Dinamarca, Finlandia, Francia, Gran Bretaña, Holanda, Italia, Irlanda, Portugal y Suecia. Mundo: Desde Noruega a lo largo de todo el litoral atlántico hasta las costas del Mediterráneo.'
),
(
    '*Anguilla anguilla*',
    'Anguila',
    'Clase: Actinopterygii, Orden: Anguilliformes, Familia: Anguillidae',
    'Autóctona',
    'Es una especie de tamaño medio que puede alcanzar 1,5 m de longitud total y 6 kg de peso. Cuerpo muy alargado y cilíndrico, a excepción de la parte posterior que está comprimida lateralmente. Piel recubierta de mucosa con pequeñas escamas alargadas.',
    'Especie catádroma que se reproduce en el mar de los Sargazos. Los individuos inmaduros son omnívoros y detritívoros. Tras la maduración sexual, migran de regreso al mar de los Sargazos donde se reproducen y mueren. Su ciclo de vida incluye migraciones pasivas y activas.',
    'España: En todas las cuencas hidrográficas limitadas por grandes presas. También presente en las Islas Canarias y Baleares. Europa: Presente en la mayor parte de los países europeos. Mundo: En estuarios de ríos del Atlántico, Mediterráneo, Mar del Norte y Báltico.'
),
(
    '*Hucho hucho*',
    'Salmón del Danubio',
    'Clase: Actinopterygii, Orden: Salmoniformes, Familia: Salmonidae',
    'Exótica',
    'Especie de gran tamaño que puede alcanzar 2,1 m de longitud total y 105 kg de peso. En España los mayores ejemplares no suelen superar los 12 kg, aunque se han citado algunos de 20 kg y más de 1 m de longitud. Dos aletas dorsales, una adiposa, manchas negras y rojas que varían en las diferentes poblaciones. Cabeza alargada, con maxilar comprimido dorso-lateralmente. Posee dientes vomerianos y escamas muy pequeñas, con un rango de 107 a 194 en la línea lateral.',
    'Vive en ríos de aguas frías y elevado caudal, con temperaturas que no exceden los 15°C en verano. Es una especie territorial que realiza migraciones cortas de 10 a 25 km, internándose por pequeños arroyos. Los juveniles se alimentan de pupas y larvas de insectos, mientras que los adultos son depredadores de ciprínidos y otros pequeños vertebrados. La reproducción ocurre en primavera, depositando de 1,600 a 35,000 huevos en grava, los cuales tardan 30 días en incubar.',
    'Europa: Endémica de la cuenca del Danubio en países como Alemania, Austria, República Checa, Eslovaquia, Hungría, Polonia, Rumania, Suiza, Ucrania y Yugoslavia. Introducida en España en 1968 en los ríos Órbigo, Esla y el río Tormes, donde se mantiene mediante repoblaciones.'
),
(
    '*Oncorhynchus kisutch*',
    'Salmón del Pacífico',
    'Clase: Actinopterygii, Orden: Salmoniformes, Familia: Salmonidae',
    'Exótica',
    'Especie de gran tamaño que puede alcanzar un metro de longitud y 15 kg de peso. Como todos los salmónidos, presenta dos aletas dorsales, una de ellas adiposa. Se distingue por sus numerosas manchas negras sobre el dorso y el lóbulo superior de la aleta dorsal, con base de los dientes blanca.',
    'Vive en el mar o lagos, retornando a los ríos para reproducirse. Los jóvenes se alimentan de insectos en pozas y, al crecer, pasan a crustáceos planctónicos y peces en el mar. Permanece en agua dulce de uno a dos años antes de migrar al mar. La reproducción ocurre en primavera, con juveniles que migran río abajo tras el nacimiento.',
    'Mundo: Se distribuye por el Pacífico norte, desde Baja California en México hasta el río Anadyr en Rusia, incluyendo Japón. En España, se encuentra una pequeña población en el embalse de Vegamián (León), derivada de escapes de piscifactorías.'
),
(
    '*Oncorhynchus mykiss*',
    'Trucha arco-iris',
    'Clase: Actinopterygii, Orden: Salmoniformes, Familia: Salmonidae',
    'Exótica',
    'Su distribución natural se extiende por los ríos de la vertiente pacífica de América del Norte desde
Alaska a Baja California. Sin embargo, es una de las especies más cultivadas habiéndose introducido de manera altificial en casi todo el mundo. En España fue introducida, desde América del Norte, a finales del siglo XIX (Ugarte, 1929) y se puede hallar
en todas las cuencas hidrográficas, especialmente en aquellos sitios en donde se sueltan ejemplares
con fines de repoblación y cerca de las piscifactorías, donde siempre se escapan algunos ejemplares.
Durante el período de 1973 a 1983, en la cuenca del Duero, la trucha arco-iris experimentó un
incremento en el número de individuos introducidos por la Administración (Lobón el al., 1989); si
bien en la actualidad su repoblación en España para pesca deportiva ha sido limitada a unas pocas
cuencas y localidades (Sostoa el al., 1990).',
    'Existen poblaciones repartidas por varios puntos de España pero la mayoría no son estables, necesitando de continuas repoblaciones. Muy pocas de las poblaciones se reproducen en libertad en
España. También es frecuente la existencia de individuos aislados cerca de las piscifactorías comerciales, aparentemente procedentes de escapes de las mismas.
El hábitat natural son aguas claras con temperaturas estivales del agua alrededor de 12ºC. Prefiere ríos con corriente moderada y rápida, así como lagos y embalses, existen algunas poblaciones
anadromas. Su alimentación se basa principalmente en larvas de invertebrados, consumiendo también otros peces de pequeño tamaño. Los jóvenes
se alimentln fundamentalmente de zooplancton.',
    'Su distribución natural se extiende por los ríos
de la vertiente pacífica de América del Norte desde
Alaska a Baja California. Sin embargo, es una de las especies más cultivadas habiéndose introducido de manera altificial en casi todo el mundo. En España fue introducida, desde América del Norte, a finales del siglo XIX (Ugarte, 1929) y se puede hallar
en todas las cuencas hidrográficas, especialmente en aquellos sitios en donde se sueltan ejemplares
con fines de repoblación y cerca de las piscifactorías, donde siempre se escapan algunos ejemplares.
Durante el período de 1973 a 1983, en la cuenca del Duero, la trucha arco-iris experimentó un
incremento en el número de individuos introducidos por la Administración (Lobón el al., 1989); si
bien en la actualidad su repoblación en España para pesca deportiva ha sido limitada a unas pocas
cuencas y localidades (Sostoa el al., 1990).'
),
(
    '*Salmo salar*',
    'Salmón',
    'Clase: Actinopterygii, Orden: Salmoniformes, Familia: Salmonidae',
    'Autóctona',
    'Especie de gran talla que puede alcanzar 1,5 m de longitud total y 45 kilos de peso máximo, sin
embargo en España no suele alcanzar el metro de longitud y los 20 kilos de peso. La máxima edad
encontrada es de 13 años. Entre la aleta dorsal y la caudal posee una aleta adiposa. Las aletas pel
vianas están en posición abdominal y los dientes mandibulares bien desarrollados. Cabeza más pe
queña que la de la trucha. Vómer corto y sin dientes. Presentan un maxilar pequeño alcanzando
sólo a la mitad posterior del ojo. En los machos muy viejos, las mandíbulas pueden presentar una
notable deformación ya que se encorvan por su extremo, la una hacia la otra. Pedúnculo caudal es
trecho en su porción central. Escamas pequeñas en número de 120 a 130 en la línea lateral. A lo
largo de su vida aparecen diferentes morfotipos a los que se asignan diferentes nombres. Al princi
pio de su vida se les llama «pintos» al ser coloreados con manchas rojas. Cuando se van al mar em
piezan a platear y en los flancos se ven unas manchas negras en forma de x; se les llama entonces
«esguines». Cuando vuelven del mar ya maduros tienen el dorso azul-verdoso y el resto del cuerpo
plateado, viéndose en los opérculos y en los flancos unas manchas negras esparcidas de forma re
dondeada o de x; son los denominados «salmones». Una vez que se han reproducido pueden volver
al mar arrastrados por la corriente; son los «zancadas».',
    'Sus poblaciones sufren diversos picos de abundancia depen
diendo de los años pero mantienen un constante declive. Según
cifras oficiales de captura, la media anual de salmones pescados
en toda España ha sido aproximadamente de 6.000, 4.500, 4.000
y 1900 para las décadas de los 60, 70, 80 Y 90 respectivamente.
Frecuentemente se han realizado repoblaciones con huevos o
alevines provenientes de fuera de España que no han supuesto
una recuperación efectiva de la población nativa. Se realizan pes
querías también en alta mar las cuales han influido en el declive
de las poblaciones.
El salmón es una especie migradora anádroma que sube los
ríos para realizar su reproducción en aguas frías y oxigenadas. En
España la entrada en los ríos se produce desde octubre hasta
agosto, siendo más grandes los individuos que entran antes (40
cm de talla media) y la maduración gonadal concluye en el río.
En el mar los salmones se alimentan de krill, pero durante su eta
pa reproductora en el río dejan de alimentarse. Los zancadas,pintos y esguines se alimentan principalmente de macroinvertebrados acuáticos; crustáceos, insectos
acuáticos, lombrices, etc.
Los jóvenes permanecen en las aguas dulces de dos a tres años para migrar al mar y volver des
pués de dos años para realizar su ciclo reproductor en el río. Algunos salmones pueden reprodu
cirse hasta cuatro veces. Al final de su primer año de vida en el río los pintos pueden alcanzar de
10 a 16 cm, al cabo de un período de dos a tres años se convierten en esguines que se van al mar
de forma gregaria.
No es muy común pero puede ocurrir que determinados pintos con un año de edad alcancen la
madurez sexual, llegando a ser machos reproductores. En el mar pueden permanecer de dos a tres
años antes de volver a los ríos.',
    'España: vive en la cuenca de los ríos: Nive, Bidasoa, Urumea, Asón, Miera, Pas, Nansa, Deva-Ca
res, Purón, Porcía, Sella, Negro, Narcea, Esva, Navia, Ea, Masma, Landró, Eume, Mandeo, Ulla,
Lérez y Miño. Hay citas antiguas de su presencia en los ríos Duero, Tajo y Guadiana.
UE: esta especie está presente en: Bélgica, Dinamarca, Francia, Alemania, Holanda, Suecia, Fin
landia, Portugal, Gran Bretaña e Irlanda, sin embargo sólo tiene poblaciones estables en Gran Bre
taña e Irlanda, en los demás países se encuentra en regresión. Ha desaparecido de ríos donde an
tes era abundante como el Rhin o el Elba.
Mundo: se distribuye por el Atlántico NOlte desde Groenlandia, Islandia y el mar Blanco hasta el
río Miño. En América está presente desde la región de Ungava en el norte de Quebec hasta Con
necticut en Estados Unidos.'
),
(
    '*Salvelinus fontinalis*',
    'Trucha de arroyo',
    'Clase: Actinopterygii, Orden: Salmoniformes, Familia: Salmonidae',
    'Exótica',
    'Porte general parecido al de las truchas. Aleta caudal muy escotada en los individuos juveniles,
pero sólo algo cóncava en los adultos. El premaxilar sobrepasa el borde posterior del ojo. Las es
camas son muy pequeñas y hay unas 230 en la línea lateral. El dorso presenta coloración verdosa,
con manchas blancas sinuosas muy características; flancos de color más claro que el dorso, con nu
merosas manchas rojizas, a veces oceladas. Los mayores
tamaños alcanzados en la naturaleza son de 86 cm de
longitud cabeza-cuerpo y 9 kg de peso. En cautividad se
conocen ejemplares de hasta 15 años de edad. El número cromosómico es de 2n=84.',
    'Muy pocas poblaciones en España repartidas princi
palmente por el norte de la Península Ibérica.
Prefiere lagos alpinos y ríos de montaña, de poca co
rriente yagua fría y oxigenada, con masas de vegetación
acuática que les proporcionen refugios. Su alimentación
es muy variada y está basada principalmente en insectos acuáticos, aunque puede alimentarse tam
bién de pequeños vertebrados como peces y anfibios.
La reproducción tiene lugar entre los meses de octubre y diciembre. La incubación dura alrede
dor de 100 días con temperaturas de 52 C.',
    'Es originaria de América del Norte distribuyéndose por la
mayor parte de la costa este de Canadá desde ewfoundland
hasta la bahía de Hudson. En Estados Unidos desde Minesota y
el norte de Georgia hasta los grandes lagos y cuenca del Misisi
pi. Esta especie fue introducida en España a finales del siglo
XIX, procedente de la costa oriental de Norteamérica (Lozano Rey, 1935). Su introducción fue reali
zada en lagos y en las cabeceras de algunos ríos del Sistema Central, Cornisa Cantábrica y Pirineo.
Actualmente se extiende a las grandes cuencas hidrográficas del Tajo, Ebro y lagos de la Cordillera
Cantábrica.'
),

(
    '*Esox lucius*',
    'Lucio',
    'Clase: Actinopterygii, Orden: Esociformes, Familia: Esocidae',
    'Exótica',
    'Se trata de un pez que supera con frecuencia los 70 cm, pudiendo llegar a sobrepasar un metro
de longitud y 25 kg de peso. Se conocen ejemplares que han vivido 30 años. Tiene entre 110 y 130
escamas en la línea lateral y es de color verdoso, con manchas amarillentas que rompen la unifor
midad de los flancos. La boca es una de sus características más llamativas. Es de gran tamaño, an
cha, aplanada y recubierta por fuertes dientes. La aleta dorsal se sitúa en la parte posterior del cuer
po, cerca de la aleta caudal y opuesta a la anal. Aunque el número cromosómico más usual es
2n=50, existen números 2n=36, 2n=46 y 2n=48.',
    'El lucio se extiende por la mayor parte del territorio nacional con poblaciones estables que son
sometidas a control en algunos ríos trucheros.
Es un depredador que no realiza migraciones apreciables, viviendo en zonas remansadas, de es
casa corriente y vegetación abundante, sobre la que deposita sus huevos. Es altamente territorial y
solitario. Los estudios realizados en aguas españolas sobre la dieta del lucio reflejan que es de tipo
mixto, al consumir tanto invertebrados como vertebrados, existiendo una relación entre el tamaño
del lucio y el tipo de presas consumidas. Se alimenta de invertebrados en los primeros meses de
vida pasando gradualmente a consumir peces, que constituyen su dieta casi exclusiva a partir de los
30 cm (Pena et al., 1987; Sánchez-Isarria et al., 1989a). La ausencia de determinados ciprínidos
(como la tenca, Tinca tinca) en la dieta del lucio, a pesar de ser abundantes en la zona estudiada
por Pena et al. (987), podría deberse a la baja posición que ocupan
en la columna de agua, al igual que ocurre con el gobio (Gobio go
bio) de forma que soportarían mejor la depredación del lucio (Rincón
et al., 1990). Sin embargo, en las lagunas de Ruidera aparece también
el fraile (Salaria fluviatilis), un pez bentónico (Elvira et al., 1996).',
    'Originalmente tiene una distribución circumpolar
ocupando Norte América desde Alaska y el Labrador
hasta Pensilvania, Missouri y Nebraska, tanto en los ríos
de la vertiente atlántica como en los de la pacífica y ártica. En Eurasia desde Francia hasta Siberia
por el este y por el sur hasta el norte de Italia. De forma natural falta en España aunque se cono
cen fósiles del Pleistoceno para la cuenca del Tajo y también esta ausente del norte de Noruega y
del norte de Escocia. Se ha introducido, con fines deportivos y económicos en diversos países. En
España fue importada desde Francia en 1949 con fines deportivos (Gutiérrez-Calderón, 1955).'
),
(
    '*Blicca bjoerkna*',
    'Brema blanca',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Exótica',
    'Es una especie de talla media que no suele sobrepasar los 25 cm de longitud total, aunque se
han llegado a citar ejemplares de 36 cm y 1 kg
de peso. El cuerpo esta comprimido lateralmen
te, alto y con la cabeza pequeña con respecto al
tamaño del cuerpo. La aleta dorsal es muy alta
normalmente con ocho radios blandos y la anal
larga con 19 a 22 radios blandos. Los dientes fa
ríngeos se disponen en dos filas (2-5) lo cual les
diferencia de la otra especie europea de este
género A. brama que presenta los dientes en
una fila (5). La línea lateral esta bien definida y
las escamas son grandes con un número de 44
45 a lo largo de la línea lateral. La coloración es
más oscura en el dorso y plateada en el vientre.
El número de cromosomas es 2n=52.',
    'Las poblaciones son muy pequeñas y no se conoce su evolución actual. Ha desaparecido ya de la Comunidad de Valencia
Vive en ríos, lagos y embalses con aguas quietas. Suelen formar cardúmenes en primavera y ve
rano, mientras que en invierno se separan para hibernar. Se alimenta sobre el fondo de invertebra
dos acuáticos y plantas. Los juveniles se alimentan de zooplancton.
La reproducción tiene lugar entre los meses de mayo a julio. La madurez sexual se alcanza a los
tres años en los machos y a los cuatro años en las
hembras. Las hembras depositan sobre el sustrato
de 17.000 a 109.000 huevos. Estos son de tamaño
pequeño y su diámetro oscila alrededor de 2 mm.
La incubación dura entre cuatro y seis días.
',
    'Europa desde los Pirineos a los Urales. Falta en las penínsulas mediterráneas. En España ha sido
introducida en la década de los 90. La ausencia de interés depoltivo o comercial de esta especie hace
inexplicable los motivos de su introducción. Hay algunas poblaciones en el litoral mediterráneo.'
),
(
    '*Alburnus alburnus*',
    'Alburno',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Exótica',
    'Especie de pequeño tamaño que suele alcanzar los 15 cm de longitud, con una talla máxima re
portada de 25 cm. El cuerpo es alargado y comprimido lateralmente. La aleta dorsal esta situada más
cerca del comienzo de la caudal que del hocico. La boca es súpera. El pedúnculo caudal es largo y
estrecho. La aleta dorsal es corta con 8 radios ramificados y la aleta anal larga con 16-19 radios ra
mificados. Las escamas son grandes y su número en la línea lateral es de 47-52.',
    'Poblaciones en aumento, especialmente en las cuen
cas del Ebro y Júcar.
Vive en ríos y lagos cerca de la superficie alimen
tándose de zooplancton, crustáceos e insectos.
La mayor parte de los individuos alcanzan la madurez sexual a los dos años de edad aunque al
gunos pueden ser ya maduros con un año. La freza suele ocurrir en invierno entre los meses de no
viembre y enero.',
    'Vive en Europa desde la vertiente norte de los Pirineos hasta los Urales. En Italia, Grecia, Dal
macia y Cáucaso es sustituida por un grupo de especies vicariantes muy emparentadas filogenética
mente. En España es una especie exótica que ha sido introducida con fines aparentemente deporti
vos en la década de los noventa. Se distribuye por la cuenca del Ebro y otros ríos mediterráneos.'
),
(
    '*Anaecypris hispanica*',
    'Jarabugo',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Autóctona',
    'Es un pez de pequeño tamaño que raramente alcanza los 10 cm. Cabeza pequeña con boca muy
súpera. Pedúnculo caudal largo y estrecho. La aleta dorsal, situada posteriormente a las ventrales,
tiene los primeros radios muy largos. Existe una quilla entre las aletas
ventrales y la anal. Escamas muy pequeñas que no se encuentran bien
imbricadas por lo que son caedizas, pudiéndose contar a lo largo de
una línea longitudinal al cuerpo del orden de 59 a 71. La posesión de
una línea lateral incompleta o ausente en alguno de los lados del cuer
po es muy característica de la especie. Coloración del cuerpo amari
llenta o parda con el dorso y los laterales finamente moteados de ne
gro. El número de branquispinas es de 82 anO.',
    'Muy fragmentada y en continuo declive. La población de la cuenca
del Guadalquivir parece haber desaparecido por los vertidos de Azuaga.
Vive en pequeños arroyos de corriente lenta, con vegetación sumergida y fondos pedregosos. La
dieta está constituida por invertebrados planctónicos y bentónicos, completada por fanerógamas, al
gas y detritos.
Prácticamente no existen datos sobre su reproducción sólo se conoce que los individuos con 3 cm
son reproductores.',
    'España: en España vive en ríos de la cuenca del Guadiana.
VE: en Portugal aparece en las subcuencas de los ríos Gévora (Abrilongo), Caia, Álamo, Degebe (Pe
cena y Pardiela), ArdUa (Murtega, Murtigao y Safara), Carreiras, Chanca, Vascao, Foupana, y Odeleite.
Mundo: especie endémica de la Península Ibérica.'
),
(
    'Luciobarbus bocagei',
    'Barbo común ibérico',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Autóctona',
    'Especie de tamaño relativamente grande comparada con las otras especies de ciprínidos que ha
bitan en la Península Ibérica, conociéndose ejemplares de hasta 1 m de longitud. Boca protráctil y
en posición ínfera con un labio superior grueso y el inferior a menudo retraído, dejando ver el den
tario. Dos pares de barbillas en la mandíbula superior, cortas en relación a la cabeza, no llegando
el primer par al borde anterior del ojo y el segundo par
al borde posterior. El último radio de la aleta dorsal tie
ne denticulaciones que en los adultos ocupan sólo una
pequeña zona situada por debajo de la mitad del mismo.
La aleta anal es pequeña, siendo más larga en la hembra,
hecho relacionado con la forma de realizar la puesta. En
la época de celo los machos presentan tubérculos nup
ciales en la región cefálica. La coloración varía mucho se
gún los ríos y sobre todo según la fase de desarrollo en
la que se encuentran. Los juveniles presentan manchas
oscuras que desaparecen en los adultos.',
    'Es localmente abundante aunque con una tendencia regresiva.
El barbo común frecuenta ríos de corriente lenta, sin embargo en épocas de freza realiza migra
ciones río arriba pudiendo aparecer entonces en zonas de corriente rápida. En la cuenca del Tajo
es sustituido en las partes bajas por Barbus comiza. Su ali
mentación es detritívora y bentónica, consumiendo preferen
temente larvas de insectos.
El período de reproducción tiene lugar entre los meses de
febrero y junio, soliendo realizar la puesta entre mayo y ju
nio. Los machos maduran sexualmente a partir de los 7 cm,
mientras que las hembras alcanzan la madurez sexual entre
los 18 y los 20 cm. El 92% de los machos son maduros se
xualmente a los 3 años de edad, el 50% de las hembras lo son
a los 6 años y el 100% a los 8 años. Las hembras ponen de
10.000 a 25.000 huevos y tienen hábitos litófilos. La hembra con su aleta anal excava un surco don-
de deposita los huevos.',
    'España: se distribuye en las cuencas de los ríos Tajo, Duero y Limia. Aunque ha sido citada en
la cuenca del río Miño, en la actualidad parece haber desaparecido de esta área.
DE: se encuentra también en Portugal.
Mundo: Barbus bocagei es una especie endémica de la Península Ibérica.'
),
(
    '*Barbus comizo*',
    'Barbo comizo',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Autóctona',
    'Es la especie dentro del género Barbus que puede alcanzar un mayor tamaño, conociéndose ejemplares que superan el metro de longitud total. Su cuerpo es alargado, sobre todo en la región caudal donde se estrecha considerablemente. Se diferencia de otras especies del mismo género presentes en la Península Ibérica por el alargamiento que experimenta la cabeza en los ejemplares adultos. Este alargamiento cefálico afecta especialmente al hocico el cual se hace muy prominente y algo cóncavo. Las barbillas son cortas con relación a la cabeza, no alcanzando las primeras el borde anterior del ojo, ni las segundas el borde posterior. El último radio sencillo de la aleta dorsal es muy robusto y fuertemente denticulado. Las hembras presentan una aleta anal más larga que los machos y alcanzan mayor tamaño. En la época de reproducción los machos muestran unos tubérculos nupciales muy acentuados en la parte anterior de la cabeza.',
    'Debido a su preferencia por los tramos bajos de los ríos, los cuales son los que han sufrido mayor deterioro en España por la contaminación urbana e industrial, sus poblaciones se encuentran en regresión.
El barbo comizo prefiere ríos profundos con poca velocidad de corriente. Por esta razón no se ve tan perjudicado como otras especies de este género por la construcción de embalses. Tiene hábitos alimentarios planctónicos consumiendo preferentemente insectos y ocasionalmente otros peces.
La reproducción está poco estudiada pero se extiende desde mayo a junio.',
    'España: solo vive en las cuencas de los ríos Tajo y Guadiana. También existen citas en el bajo Guadalquivir y en el Ebro, pero en estas áreas parece haberse extinguido.
DE: también en Portugal.
Mundo: esta especie es un endemismo de la Península Ibérica.'
),
(
    '*Barbus graellsii*',
    'Barbo de Graells',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Autóctona',
    'Especie de gran tamaño, que puede alcanzar tallas máximas de hasta 80 cm de longitud total, aunque la mayoría no suele superar los 35 cm. El cuerpo es más alargado y esbelto que el de las especies que le son más próximas, es decir: B. bocagei, B. guiraonis y B. sclateri. La aleta dorsal en los ejemplares adultos no presenta denticulaciones en el último radio sencillo, mientras que pueden aparecer de forma excepcional en los ejemplares más jóvenes.
La aleta dorsal se encuentra en la misma vertical que las demás.
Los labios en general son gruesos, presentando el inferior un lóbulo medio bien desarrollado.

Los machos son más pequeños que las hembras y, en época de reproducción, muestran tubérculos nupciales muy desarrollados en la región anterior de la cabeza. El color del cuerpo es pardo verdoso y moteado en juveniles. En el delta del Ebro, los machos viven entre 11 y 12 años, es decir, menos que las hembras que suelen vivir hasta los 16 años; edades que corresponden respectivamente a intervalos de talla de 38-40 cm para machos y 42-46 cm para hembras.',
    'Existe una tendencia marcadamente regresiva en las poblaciones, aunque todavía es localmente abundante en algunos ríos.
Barbus graellsii es una especie que puede colonizar todo tipo de medios, aunque prefiere los cursos medios y bajos de los ríos. En los tramos altos de su área de distribución esta especie es sustituida por B. haasi y B. meridionalis. Se la encuentra en los tramos altos únicamente en la época de reproducción, buscando zonas de arena y grava donde realizar la puesta, siendo esta una especie litófila. Como ocurre en otras especies del género Barbus, prefiere zonas tranquilas con vegetación y raíces de árboles y cuevas donde encuentra refugios. Tienen hábitos gregarios, para lo que suelen formar agrupaciones, incluso con otras especies de ciprínidos, como Squalius cephalus y Chondrostoma toxostoma. Presentan una alimentación variada, según la disponibilidad de recursos del medio, pero en general se alimentan tanto de algas como de macroinvertebrados acuáticos.

Machos y hembras alcanzan la madurez sexual a los 4 años (algunos machos lo hacen a los 3 años), con tallas corporales de 15 a 20 cm. Cada hembra pone de 5.000 a 25.000 huevos. La época de reproducción dura desde mayo hasta agosto, siendo máximo el número de óvulos maduros en junio.',
    'España: se distribuye básicamente en la cuenca del Ebro, aunque también se encuentra en otros
ríos del norte de España. En el cantábrico hasta el río Asón y en Cataluña hasta el río Ter.
DE: especie endémica de España.
Mundo: especie endémica de España.'
),
(
    '*Barbus guiraonis*',
    'Barbo mediterráneo',
    'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae',
    'Autóctona',
    'Especie de gran tamaño que puede alcanzar los 60 cm de longitud total. El cuerpo es alargado y la cabeza pequeña. Los labios son gruesos, aunque frecuentemente el inferior se retrae dejando ver el dentario. Las barbillas son largas, pero más cortas que en B. graellsii, no sobrepasando las anteriores el borde anterior del ojo, ni las posteriores el borde posterior del mismo. El último radio de la aleta dorsal, en los ejemplares adultos, o bien no presenta denticulaciones o, si las presenta, son muy débiles. Durante la época de reproducción, los machos desarrollan tubérculos nupciales muy destacados en la región cefálica.',
    'Marcadamente regresiva, aunque todavía es localmente abundante en algunos ríos.
Barbus guiraonis es una especie ubiquista que solo falta en los tramos altos, donde es sustituida por el barbo colirrojo (B. haasi). Es también frecuente en los embalses y lagunas naturales. En la actualidad, no se tienen datos sobre la biología y ecología de la especie, si bien se supone que serán muy similares a los de B. graellsii y B. bocagei.
Solo se conoce que se reproduce entre los meses de abril y junio.',
    'España: Se extiende, por tanto, por todo el litoral mediterráneo español, al sur del Ebro y hasta
el río Vinalopó. También aparece puntualmente en algunos ríos del alto Guadiana.
DE: especie endémica de España.
Mundo: especie endémica de España.'
),
('Barbus haasi', 'Barbo colirrojo', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Este barbo es de pequeño tamaño y su longitud total no suele superar los 30 cm. La cabeza es grande, con un hocico largo y ancho. Los labios son gruesos y el inferior tiene un lóbulo medio bien desarrollado. Los labios se retraen como ocurre en otras especies de barbos. Las barbillas son relativamente largas y gruesas, aunque las anteriores no alcanzan el borde anterior del ojo, dado el gran desarrollo cefálico, y las posteriores tampoco llegan al borde posterior del ojo. El último radio sencillo de la aleta dorsal presenta pequeñas denticulaciones en la mayoría de los ejemplares, careciendo de ellas algunos individuos adultos. La aleta anal es larga y el pedúnculo caudal corto y alto. Por este motivo, la aleta anal suele alcanzar los primeros radios de la aleta caudal.La coloración, muy característica, presenta pequeñas manchas negras, mayores que las de B. meridionalis, aunque no afectan a todas las aletas ni son tan numerosas. A pesar de esto, se diferencia fácilmente porque la aleta anal, parte de la caudal y los radios de las pelvianas se encuentran teñidos de rojo, color que en la época de reproducción se vuelve más intenso y se acompaña de otros caracteres sexuales secundarios, como los tubérculos nupciales que exhibe el macho.', 
'Es una especie generalmente escasa, muy sedentaria y que no realiza grandes desplazamientos reproductivos como otros barbos. Existen híbridos con Barbus meridionalis en determinadas cuencas fluviales de Cataluña.

Es una especie bentónica que prefiere los cursos altos de los ríos, con aguas frías y corrientes, aunque también se le puede encontrar en los tramos medios de ríos de curso corto. Se encuentran bajo las piedras, entre la vegetación o en el interior de pequeñas cuevas. Son de hábitos más solitarios que el resto de los barbos, aunque se les puede ver bajo las piedras acompañados de otros individuos de la misma especie. Resultan más fácilmente observables en época de estío o de reproducción. Su alimentación está basada fundamentalmente en macroinvertebrados bentónicos, sobre todo larvas de quironómidos, efemerópteros y tricópteros.

Se reproducen entre abril y junio, y la hembra pone entre 2.000 y 7.000 huevos. Pueden llegar a vivir de cinco a seis años. El macho madura prematuramente, cuando tiene un año de edad.', 
'España: se distribuye por toda la cuenca del río Ebro, ocupando los cursos altos de los ríos. Tam
bién se puede hallar esta especie en las cuencas de los ríos Llobregat, Francolí, Foix, Mijares, Pa
lancia, Turia, Besós, Gaia, La Cenia y Riudecanyes.
DE: endémico de España.
Mundo: endémico de España.'),

('Barbus meridionalis', 'Barbo de montaña', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Barbo relativamente pequeño que en España raramente alcanza los 30 cm de longitud total y 200 g de peso. La cabeza es relativamente pequeña, mucho más que en B. haasi. Los labios son muy variables, aunque normalmente son anchos, presentando un lóbulo medio algo visible. Las barbillas son cortas y finas. El último radio sencillo de la aleta dorsal no presenta denticulaciones. Las aletas son bajas y la dorsal presenta un perfil convexo.
La coloración del cuerpo en los adultos es pardo-grisácea y se encuentra profusamente moteada de manchas negras, tanto en adultos como en juveniles. Este patrón de coloración es similar al que ostentan los individuos jóvenes de otras especies de barbos, prestándose a confusión. No se ha descrito la existencia de tubérculos nupciales en esta especie.', 
'a tendencia poblacional es marcadamente regresiva ya que prefiere cursos de
aguas claras y oxigenadas, los cuales son cada vez menos frecuentes en su área de
distribución natural. En algunos ríos parece hibridar con B. haasi.
Esta especie vive en los cursos fluviales de montaña, cuyas aguas son rápidas, oxigenadas y lim
pias ya que son muy sensibles a la contaminación. No obstante, también abunda en los cursos me
dios de algunos ríos mediterráneos situados en el norte de Cataluña. En Francia se sabe que puede
colonizar cursos medios y bajos. Su alimentación está basada principalmente en invertebrados.',
 'España: en España vive en las cuencas de los ríos Muga, Fluviá, Ter, Daró, Tordera y Besós.
DE: también en Francia.
Mundo: endémica del litoral mediterráneo de Francia y España.'),


('Barbus microcephalus', 'Barbo cabecicorto', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Este barbo alcanza tallas similares a las de B. bocagei y B. sclateri. La talla máxima conocida es de 50 cm de longitud total. Su tamaño no difiere de forma significativa del de otras especies de barbos peninsulares, con la excepción de B. haasi y B. meridionalis. Los labios son finos y retraídos, dejando ver el inferior el dentario y el superior el maxilar. Presentan barbillas finas y cortas con relación a la cabeza.

El último radio sencillo de la aleta dorsal se halla muy osificado y denticulado en toda su extensión, como ocurre en B. comizo. Esta aleta es grande y presenta un perfil cóncavo. Al igual que en otros barbos ibéricos, la hembra tiene la aleta anal más larga que los machos, carácter que se piensa tiene relación con la práctica de excavar un surco para la realización de la puesta. Los machos, en época de freza, presentan tubérculos nupciales en la parte anterior de la cabeza.', 
'Marcadamente regresiva, aunque todavía es localmente abundante en algunos ríos.
Esta especie convive con B. cornizo en embalses y ríos con cauce profundo y
aguas lentas. Sin embargo, también se puede encontrar en zonas de mayor pendiente y con más co
rriente, lugares poco frecuentados por B. cornizo. En cuanto a su alimentación, es bastante pareci
da a la de B. bocagei ya que también es detritívoro y bentónico.
Sólo se conoce que su reproducción ocurre entre los meses de abril y junio.',
'España: se distribuye por toda la cuenca del río Guadiana, ha sido citada en algunos puntos muy
localizados de la cuenca del Tajo (embalse de Torrejón), donde nosostros no la hemos encontrado.
DE: también está presente en Portugal.
Mundo: endemismo de la Península Ibérica.'),


('Barbus sclateri', 'Barbo gitano', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'El barbo gitano es una especie de gran tamaño que puede alcanzar alrededor de 40 cm de longitud total. Su cuerpo es robusto y el pedúnculo caudal es más corto y alto que en otras especies del género Barbus. Los labios son gruesos, aunque a veces el inferior se encuentra retraído, dejando ver el dentario. Tienen unas barbillas largas, sobrepasando la primera el borde anterior del ojo y la segunda el posterior, aunque también puede haber individuos con barbillas más cortas.
El último radio sencillo de la aleta dorsal presenta denticulaciones de tamaño medio en casi toda su extensión, siendo más pequeñas que en Barbus comizo y Barbus microcephalus. Tiene un menor número de escamas que otras especies del mismo género. La coloración es muy constante, y en los ejemplares adultos existe un fuerte contraste entre la parte ventral clara y el dorso oscuro.
En época de reproducción, los machos desarrollan en la cabeza tubérculos nupciales grandes y llamativos, y se acentúa la diferencia de color entre el dorso y el vientre. Presentan una longevidad que no sobrepasa los ocho años de edad. Poseen una tasa de crecimiento baja, ya que durante el verano los individuos se ven aislados en pequeñas pozas debido a la sequía y los recursos alimentarios decrecen. El período de crecimiento es largo (6 meses) al estar influido por la temperatura, que es elevada en el sur de España.', 
'Marcadamente regresiva, aunque todavía es localmente abundante en algunos ríos.
El barbo gitano ocupa diferentes tramos de río en un mismo área de distribución, pero desaparece
en las aguas frías y rápidas.
En las hembras, el desarrollo gonadal comienza en septiembre, intensificándose desde febrero
hasta abril que es cuando alcanza su valor máximo. La puesta tiene lugar en mayo para la pobla
ción del Guadalquivir y entre mayo y junio para la población del Embalse de Cubillas. Los machos
maduran a partir de 7-9 cm de longitud (2-4 años de edad), mientras que las hembras lo hacen a
partir de los 11-16 cm (6-7 años de edad). Una hembra puede llegar a poner unos 14.000 huevos.',
'España: vive en las cuencas de lar ríos Guadalquivir, Guadiaro, Guadalete, Guadalhorce, Segura,
afluentes del tramo bajo del Guadiana y en numerosas pequeñas cuencas del sur de España hasta
la Cuenca del Vélez en Málaga.
UE: está presente también en Portugal.
Mundo: especie endémica de la Península Ibérica.'),

('Carassius auratus', 'Pez rojo', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Exótica', 
'Es un ciprínido que raramente supera los 30 cm de longitud. La
talla máxima conocida es 45 cm de longitud total y 2 kg de peso y
la edad máxima de 30 años. El tamaño de la cabeza es relativamen-
te grande comparado con el tamaño del cuerpo. La boca pequeña y terminal no tiene barbillas senso-
riales. Su aleta dorsal es alargada y suavemente cóncava y tiene entre 25 y 35 escamas en la línea late-
ral. El color varía en las formas silvestres entre un tono castaño-verdoso y dorado, existiendo formas
con colores y aspectos llamativos empleadas como ornamentales. Las características externas son muy
similares a las de Carassius carassius, especie que no está presente en nuestras aguas y de la que se
diferencia por el número de branquispinas: 39-50 en C. aumtus y 22-33 en C. carassius. El número de
cromosomas es 2n=100.',
'Algunos autores consideran que las poblaciones de Carassius auratus de Europa y Siberia perte-
necen a una especie diferente Carassius gihhelio (ver Kottelat, 1997) fundamentándose más en la
distribución que en características morfológicas propias. Para este Atlas se ha considerado C. gihhelio
un sinónimo de C. auratus en espera de trabajos que aclaren su taxonomía.
Prefiere aguas poco profundas de lagunas y ríos de corriente lenta, con abundante vegetación y
fondos blandos, encontrándose generalmente en las orillas. Es un pez resistente que puede subsis-
tir en condiciones muy desfavorables como contaminación de aguas, falta de oxígeno y fríos inver-
nales, que no pueden soportar otras especies. Durante el invierno, al igual que las carpas, perma-
necen casi completamente enterrados en el barro, limitando mucho su actividad hasta que llega la
primavera. Su alimentación es diversa, abarcando desde algas a invertebrados bentónicos.',
'Originario de Asia Central, China y Japón, aparece hoy en aguas de unos sesenta países de to-
dos los continentes. En Europa parece estar en expansión y se considera autóctona en algunos pa-
íses del Centro y Este. Su introducción en aguas españolas debió coincidir en el tiempo con la de
la carpa, hacia el siglo XVII (Lobón-Cerviá et al., 1989). En España se distribuye prácticamente por
todas las cuencas.'),
('Chondrostoma arcasii', 'Bermejuela', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 
'Autóctona', 
'Es una especie de pequeño tamaño, de cabeza corta, boca subterminal y aleta dorsal de perfil
convexo, con su origen situado en la misma vertical de la inserción de las aletas ventrales. La línea
lateral está muy marcada y la coloración es oscura en el dorso y roja en la base de las aletas pares.
La longitud estándar presenta valores en los ejemplares adultos comprendidos entre 4,7 y 10,4 cm.
El número de escamas en la línea lateral oscila entre 36 y 48 siendo la media de 42. Presenta 7 ra-
dios ramificados en las aletas dorsal y anal aunque algunos individuos pueden tener 6 u 8 radios.
El número de dientes faríngeos es de 4 a 6 siendo el más
frecuente de 5 en cada lado. La edad máxima encontrada ha
sido de 6 años para las hembras, en el río Ucero (Soria).', 
'Las poblaciones son localmente abundantes pero en regre-
sión. Las poblaciones más amenazadas se encuentran en la ver-
tiente meditelTánea, éstas presentan algunas características mor-
fológicas propias como son la presencia más frecuente de
cuatro dientes faríngeos en lugar de cinco.
Vive en lagos y ríos de montaña formando una asocia-
ción muy característica con Salmo trutta. Es la única espe-
cie autóctona que habita en lagos endorreicos como la laguna de Gallocanta. Los juveniles de la ber-
mejuela se sitúan en zonas de poca corriente y profundidad en las orillas, sin embargo a final del
mes de julio migran hacia zonas más profundas y con más corriente. Su alimentación es oportunis-
ta, basada principalmente en invertebrados acuáticos aunque en algunos ríos como el río Moros (Se-
gavia) su alimentación tiene un fuerte componente detritívoro, consumiendo también algunas plan-
tas. Esta alimentación oportunista parece tener un valor adaptativo en ríos mediterráneos de
marcada estacionalidad.',
'España: vive en las cuencas de los ríos Duero, Ebro, Tajo, Francolí, Júcar, Turia, Palancia, Mijares, Ronbla de La Viuda, Guadiana y ríos gallegos.
UE: ha sido citada en Portugal, aunque podrían corresponder estas citas a Chondrotoma l1zacrolepidotus.
Mundo: endémica de la Península Ibérica.'),

('Chondrostoma arrigonis', 'Loina', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Ciprínido de tamaño medio que no suele sobrepasar los 30 cm de longitud total. Cuerpo alarga-
do con la cabeza relativamente pequeña y boca situada en su parte inferior. El labio inferior es grue-
so y presenta una lámina córnea de forma arqueada, a diferencia de la boga de río cuya lámina cór-
nea es recta. Pedúnculo caudal largo y estrecho. Las aletas son
largas, la dorsal tiene 8 radios ramificados y la anal de 8 a 10.
Las escamas son grandes y su número es de 44-53. El número
¡de branquiespinas es de 16 a 23. El número de dientes farín-
¡geos
más frecuente es de 6-5 y raramente 5-5.', 
'Recientemente las poblaciones españolas de Ch.toxostoma,
que eran tratadas como subespecies por la comunidad cientí-
fica, han sido elevadas a rango de especie CElvira, 1997). Nosotros seguimos la nomenclatura de El-
vira (1997) pero hay que tener en cuenta que en la legislación nacional e internacional, anterior a
1997, las poblaciones españolas se mencionan como Ch. toxostoma. Es la especie del género Chon-
drostoma que ha sufrido una reducción poblacional más notable.
Es una especie típicamente reófila que vive en aguas corrientes pero que puede sobrevivir en aguas
remansadas e incluso en embalses siempre que puedan salir río arriba en la época reproductiva.', 
'España: endémica de la cuenca del río Júcar.
DE: endémica de España.
Mundo: endémica de España.'),
('Pseudochondrostoma duriense', 'Boga del Duero', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Especie de talla media que no suele alcanzar los SO cm de longitud total. Cuerpo alargado más
que otras especies de ciprínidos. La abertura bucal es inferior y recta. El labio inferior es grueso y
presenta una lámina córnea bien desarrollada. Las aletas dorsal y anal son largas frecuentemente con
ocho radios ramificados y alguna vez con nueve. Escamas pequeñas, en la línea lateral se cuentan
entre 63 y 74. El número de dientes faríngeos es de S-S y el de bran-
quiespinas de 12 a 24. El cuerpo suele estar pigmentado con peque-
ñas manchas negras muy marcadas en las poblaciones de los ríos de
Galicia y Portugal.', 
'Esta especie fue descrita como subespecie de Ch. polylepis. Sin
embargo, recientemente ha sido elevada a rango de especie CElvira,
1997). Nosotros seguimos la nomenclatura de Elvira (1997) pero hay
que tener en cuenta que en la legislación nacional e internacional,
anterior a 1997, se menciona como Ch. polylepis.
Vive en los tramos medios de los ríos, en zonas de marcada corriente, pero también prolifera en
las aguas de los embalses. Es un pez muy gregario, especialmente durante la migración prerrepro-
ductora que efectúa curso arriba. Se alimenta de vegetación y en menor proporción de pequeños
invertebrados y detritos.
Durante la freza, los machos desarrollan numerosos tubérculos nupciales muy pequeños por todo
el cuerpo. Se reproduce entre abril y junio. Suele ser en los ríos donde vive el primer ciprínido en
reproducirse y por ello encuentra los lugares de freza libres de muchos de los posibles depredado-
res de huevos y alevines.', 
'España: endémica de la cuencas del Duero y otras cuencas de Galicia donde la especie es más
abundante.
DE: vive también en Portugal.
Mundo: endémica de la Península Ibérica.'),




('Chondrostoma lemmingii', 'Pardilla', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Especie de pequeño tamaño que no sobrepasa los 15 cm. Es muy parecida a la bermejuela de la que
se diferencia por unas escamas más pequeñas. El número de escamas en la línea lateral oscila entre 52-
66. La boca es subtemlinal y la coloración es oscura aunque pueden
aparecer pequeñas manchas negras repartidas por e! cuerpo. El nu-
mero de radios ramificados en las aletas anal y dorsal es de siete.', 
'Existen tres poblaciones muy diferenciadas morfológica (Ca-
sado, 1995) y genéticamente (Carmona et al., 2000). Una de ellas
se distribuye ampliamente por las cuencas del Duero, Tajo y los
ríos situados en el ex-
tremo occidental de
la cuenca del Guadal-
quivir pertenecientes
a las provincias de Badajoz y Huelva. Otra población está
distribuida por e! resto del Guadalquivir, pero con po-
blaciones escasas y muy fragmentadas. Por último existe
una población situada en afluentes de la margen izquier-
da del Duero que debe ser considerada como especie di-
()
ferente y se encuentra en fase de descripción (Doadrio y
u..;
Elvira, en preparación). Por ello se catalogan estas po-
blaciones independientemente. Vive en los tramos medios y bajos de los ríos donde la corriente
no es muy rápida y con abundante vegetación acuática. Su alimenta-
ción está basada en algas y zooplancton.
La reproducción parece tener lugar entre los meses de abril y
mayo para la población del Duero.', 
'España: es una especie endémica de la Península Ibérica. Se dis-
tribuye por las cuencas de los ríos Tajo, Guadiana, Guadalquivir y
Odiel, así como en los ríos de la zona suroeste de la cuenca de! Due-
ro (Uces, Turones, Yeltes y Huebra principalmente).'),


('Parachondrostoma miegii', 'Madrilla', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Ciprínido de tamaño medio que no suele sobrepasar los 30 cm de lon-
gitud total. Cuerpo alargado con la cabeza relativamente pequeña y boca
situada en su parte inferior. El labio inferior es grueso y presenta una lá-
mina córnea de forma arqueada a diferencia de la boga de río cuya lá-
mina córnea es recta. Pedúnculo caudal largo y estrecho. Las aletas son
largas, la dorsal tiene ocho radios ramificados y la anal de ocho a diez.', 
'Recientemente las poblaciones españolas de Ch. toxostoma, que eran tratadas como subespecies
por la comunidad científica, han sido elevadas a rango de especie CElvira, 1997). Nosotros seguimos
la nomenclatura de Elvira (1997) pero hay que tener en cuenta que en la legislación nacional e in-
ternacional, anterior a 1997, las poblaciones españolas se mencionan como Ch. toxostoma.
Es una especie típicamente reófila que vive en aguas corrientes pero que pueden sobrevivir en
aguas remansadas e incluso en embalses siempre que puedan subir aguas arriba en la época repro-
ductiva. Su alimenta de diatomeas y es complementariamente bentófaga.
Remontan los ríos hacia los tramos altos para realizar la freza. Ésta tiene lugar entre los meses de
abril y junio en aguas someras con fondos de piedra o grava. Suele ser el primer ciprínido en repro-
ducirse y por ello encuentra los lugares de freza libres de muchos de los posibles depredadores de
huevos y alevines. La madurez sexual se alcanza a los dos ó tres años de edad. Las hembras ponen
entre 600 y 15.000 huevos. Los machos pueden vivir hasta cinco años y las hembras hasta siete.', 
'España: se distribuye por los ríos de la vertiente cantábrica oriental: Bidasoa, Urumea, aria, Uro-
la, Deba, Attibay, Oca, Butrón, ervión, Agüera, Asón y Pas, y de la vertiente mediterránea: Llobregat,
Ebro, Riudecanyes y Cenia. También hay una población en el río Tajo.
UE: endémica de España.
Mundo: endémica de España.'),




('Pseudochondrostoma  polylepis', 'Boga del Tajo', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Especie de talla media que no suele alcanzar los 50 cm de longitud total. Cuerpo alargado más
que otras especies de ciprínidos. La abertura bucal es inferior y recta. El labio inferior es grueso y
presenta una lámina córnea bien desarrollada. Las aletas dorsal y anal son largas, la primera de ellas
tiene entre 8 y 9 radios ramificados y la segunda entre 8 y 9. Escamas pequeñas, en la línea lateral
se cuentan entre 64 y 78. El número más frecuente de dientes faríngeos es de 6-5. No
existe dimorfismo sexual marcado, aunque se han descrito algunas diferencias de tipo
morfométrico relativas al tamaño de las aletas y longitud de la cabeza.', 
'Actualmente las poblaciones de Ch. polylepis en España quedan restringidas a la
cuenca del Tajo y a las introducciones recientes en las cuencas del Júcar y Segura.
Vive en los tramos medios de los ríos, en zonas de marcada corriente, pero también
prolifera en las aguas de los embalses. Es un pez muy gregario, especialmente durante la migración
prerreproductiva que efectúa curso arriba. Se alimenta de vegetación y en menor proporción de pe-
queños invertebrados y detritos.
Durante la freza, los machos desarrollan numerosos tubérculos nupciales muy pequeños por todo
el cuerpo. Alcanzan la madurez a los 3 ó 4 años de edad y se reproducen entre marzo y junio. Sue-
le ser en los ríos donde vive el primer ciprínido en reproducirse y por ello encuentra los lugares de
freza libres de muchos de los posibles depredadores de huevos y alevines. Las hembras ponen en-
tre 1.000 y 8.000 huevos entre arenas y grava. Los machos alcanzan ocho años de edad y las hem-
bras hasta diez.', 
'España: vive en la cuenca del Tajo y ha sido introducida en las cuencas del Júcar y Segura.
DE: vive también en Portugal en las cuencas de los ríos: Vouga, Mondego, Alcoa y Sado.
Mundo: endémica de la Península Ibérica.'),






('Chondrostoma turiense', 'Madrija', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona', 
'Ciprínido de tamaño medio que no suele sobrepasar los 30 cm de longitud total. Cuerpo alarga-
do con la cabeza relativamente pequeña y boca situada en su parte inferior. El labio inferior es grue-
so y presenta una lámina córnea de forma arqueada, a diferencia de la boga de río cuya lámina cór-
nea es recta. Pedúnculo caudal largo y estrecho. Las aletas son largas, la
dorsal tiene ocho radios ramificados y la anal de ocho a diez. Las escamas
son grandes y su número es de 44-51. El número de branquiespinas es de
21 a 27. El número de dientes faríngeos más frecuente es de 6-5 y rara-
mente 6-6.', 
'Recientemente las poblaciones españolas de eh. toxostoma, que eran
tratadas como subespecies por la comunidad científica, han sido elevadas a
rango de especie (Elvira, 1997 ). Nosotros seguimos la nomenclatura de Elvira (1997) pero hay que
tener en cuenta que en la legislación nacional e internacional, anterior a 1997, las poblaciones es-
pañolas se mencionan como eh. toxostoma.
Es una especie típicamente reófila que vive en aguas corrientes pero que pueden sobrevivir en
aguas remansadas e incluso en embalses siempre que pueda remontar río arriba en la época repro-
ductiva.
Casi no existe información sobre la especie. Sólo se sabe que remontan los ríos hacia los tramos
altos para realizar la freza y que ésta tiene lugar entre los meses de marzo y mayo en aguas some-
ras con fondos de piedra o grava.', 
'España: endémica de las cuencas de los ríos Turia y Mijares.
UE: endémica de España.
Mundo: endémica de España.'),


('Chondrostoma willkommii', 'Boga del Guadiana', 'Clase: Actinopterygii, Orden: Cypriniformes, Familia: Cyprinidae', 'Autóctona',
 'Especie de talla media que no suele alcanzar los 50 cm de longitud total. Cuerpo alargado más
que otras especies de ciprínidos. La abertura bucal es inferior y recta. El labio inferior es grueso y
presenta una lámina córnea bien desarrollada. La cabeza es más pequeña que en otras especies del
genero Chondrostoma de boca arqueada. Las aletas dorsal y anal son largas, la primera de ellas tie-
ne entre ocho y nueve radios ramificados y la segunda entre ocho y
nueve. Escamas pequeñas, en la línea lateral se cuentan entre 59 y
74. El número más frecuente de dientes faríngeos es de 7-6, aunque
existen poblaciones con 6-6 dientes. No existe dimorfismo sexual
marcado.',
  'Esta especie ha sido considerada tradicionalmente por la literatu-
ra científica como una subespecie de Ch. polylepis. Sin embargo, re-
cientemente ha sido elevada a rango de especie (Elvira, 1997). No-
sotros seguimos la nomenclatura de Elvira (1997) pero hay que tener en cuenta que en la legislaCión
nacional e internacional, anterior a 1997, se menciona como Ch. polylepis.
Es muy común en los embalses aunque prefiere los tramos medios de los ríos, en zonas de mar-
cada corriente. Es un pez gregario, especialmente durante la migración prerreproductiva que efec-
túa curso arriba. Se alimenta de vegetación, invertebrados y detritos.
Durante la freza, los machos desarrollan numerosos tubérculos nupciales muy pequeños por todo
el cuerpo. Se reproduce en abril siendo el primer ciprínido en hacerlo. Por este motivo, encuentra
los lugares de freza libres de muchos de los posibles depredadores de huevos y alevines.',
   'España: vive en las cuencas de los ríos Guadiana, Odiel, Guadalquivir, y ríos del sur de España
hasta la cuenca del río Vélez en Málaga.
DE: endémica de la Península Ibérica está también presente en Portugal.
Mundo: endémica de la Península Ibérica.'),
(
    ' Salmo trutta', 'Trucha común', 'Clase: Actinoptelygii, Orden: Salmoniformes, Familia: Salmonidae', 'Autóctona',
    'Pez de talla media que no suele superar los 100 cm de longitud total y 20 kg de peso, aunque
en España raramente alcanza los 60 cm y 10 kg de peso. Su morfología es muy variable, la cabeza
es grande provista de dientes que se extienden por los maxilares, premaxilares, dentarios, palatinos
y vómer. Dos aletas dorsales, la primera con 9 a 11 radios ramificados y la segunda adiposa. Las es-
camas son muy pequeñas y su número es de
110-125 en la línea lateral. La coloración es variable, normalmente con manchas negras y rojas
oceladas, que no están presentes en la aleta caudal y que se extienden por el opérculo. Son tetraploides con un número 2n=80.',
    'En España existen dos poblaciones distintas según su comportamiento una migradora que 
se distribuye por los ríos de Galicia y la cordillera cantábrica y otra sedentaria que vive en los demás ríos españoles. Desde un punto de vista genético existen tres grandes grupos bien diferenciados, uno compuesto por todos los ríos mediterráneos hasta la cuenca del Segura, un segundo grupo formado por los ríos del sur de España en las sierras de Cazarla, Segura y Sierra evada y un tercero que agrupa todos los ríos atlánticos excepto los del Guadalquivir. Dentro de las poblaciones atlánticas, la cuenca del Duero presenta algunos marcadores genéticos únicos. Vive en aguas rápidas y frías. Su alimentación está basada fundamentalmente en invertebrados bentónicos, insectos y moluscos. Los adultos pueden consumir también peces y anfibios. 
Presenta un único período de freza que se si-
túa entre los meses de noviembre y enero cuando la temperatura del agua oscila entre 5 y 10°C. La
puesta se deposita en la grava y el número de huevos es de 1.000 a 2.000 por kg de peso. La in-
cubación dura más de 40 días a 10°C. Normalmente alcanzan la madurez sexual entre los dos y tres años de vida. Algunas poblaciones atlánticas realizan migraciones al mar regresando al río para com-
pletar el ciclo reproductor.',
    'España: se distribuye por las cabeceras de casi todos los ríos de la Península Ibérica faltando en
algunos del Levante, en el sur de España y en la cuenca del Guadiana.
UE: en todos los países de la Unión Europea.
Mundo: de amplia distribución paleártica, ha sido introducida en América y Australia.'
),
(
'Alosa fallax', 'Saboga', 'Clase: Actinoptelygii, Orden: Clupeiformes, Familia: Clupeidae', 'Autóctona',
'Alcanza tallas de 25 a 40 cm, pudiendo llegar hasta 55 cm, con pesos de hasta 2 kg. Cuerpo apla-
nado lateralmente, más pequeño que el sábalo, aunque más robusto. En la parte lateral superior del
cuerpo presenta manchas negras (de 5 a 10) que disminuyen de tama-
ño a lo largo del cuerpo. Las branquispinas son cortas y su número va-
ría de 30 a 60. Se han reconocido algunas subespecies por el número
de branquiespinas.',
'Especie migradora anádroma. Las poblaciones han sufrido un declive
muy importante debido a la construcción de presas que les impide al-
canzar las zonas de desove.
Especie eminentemente marina, en España penetra en los ríos pero
permanece cerca de las desembocaduras. Aunque su alimentación está
poco estudiada, se asume que es planctónica.
Su entrada en los ríos se produce hacia el mes de abril y frezan entre
mayo y junio, poniendo los huevos durante la noche sobre substrato de
arena o grava. Tanto adultos como juveniles se van pronto al mar.',
'España: su presencia es más frecuente en las costas mediterráneas,
adentrándose poco en los grandes ríos. En España parece ser frecuen-
te en el delta del Ebro aunque también se ha registrado su presencia en
el Miño, Ulla, Umia, Fluviá, Guadiana y Guadalquivir.
UE: se encuentra en Alemania, Bélgica, Dinamarca, Francia, Finlandia, Gran Bretaña, Grecia, Ho-
landa, Irlanda, Italia, Portugal y Suecia.
Mundo: a lo largo de las costas atlánticas desde el norte de Marruecos y el mar Báltico hasta el
golfo de Finlandia y en todo el mar Mediterráneo incluido el mar Negro.'

)

;


