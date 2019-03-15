Area.destroy_all
Catalog.destroy_all

monica = Catalog.create(name: 'Monica')
rachel = Catalog.create(name: 'Rachel')
phoebe = Catalog.create(name: 'Phoebe')
ross = Catalog.create(name: 'Ross')
joey = Catalog.create(name: 'Joey')
chandler = Catalog.create(name: 'Chandler')

perifericos = Area.create(name: 'Periféricos',catalog: monica)
windows = Area.create(name: 'Windows',catalog: rachel)
applications = Area.create(name: 'Applications',catalog: ross)
networking = Area.create(name: 'Networking',catalog: joey)
assessment = Area.create(name: 'Assessment',catalog: monica)
hardware = Area.create(name: 'Hardware',catalog: phoebe)
red = Area.create(name: 'Red',catalog: monica)
aplicaciones = Area.create(name: 'Aplicaciones',catalog: chandler)
sistema_operativo = Area.create(name: 'Sistema Operativo',catalog: rachel)

Item.create(name: 'Disco Duro', area: perifericos)
Item.create(name: 'Puerto USB', area: windows)
Item.create(name: 'Mouse', area: applications)
Item.create(name: 'Teclado', area: networking)
Item.create(name: 'Lentitud', area: assessment)
Item.create(name: 'Loop Fabric', area: hardware)
Item.create(name: 'Antivirus', area: red)
Item.create(name: 'MS Office', area: aplicaciones)
Item.create(name: 'Keyboard', area: sistema_operativo)
