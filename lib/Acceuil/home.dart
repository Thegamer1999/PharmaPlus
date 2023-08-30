import 'package:flutter/material.dart';
import 'package:pharma_plus/Favoris/favoris.dart';
import 'package:pharma_plus/Map/map.dart';
import 'package:pharma_plus/Notification/notification.dart';
import 'package:pharma_plus/Recherche/recherche.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Color _iconColor = Colors.amber;
  Color _iconColor1 = Colors.white;
  Color _iconColor2 = Colors.white;
  Color _iconColor3 = Colors.white;
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),
          NavigationDestination(
            icon: Icon(Icons.search ),
            label: 'Recherche',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.map),
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark_sharp),
            icon: Icon(Icons.bookmark_sharp),
            label: 'Favoris',
          ),
        ],
      ),
      body: <Widget>[SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,

                          child: Row(
                            children: [
                              Icon(Icons.menu,size: 40,color: Colors.amberAccent,),
                              SizedBox(width: MediaQuery.of(context).size.width*0.8,),
                              IconButton(onPressed: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => notif(),
                                  ),
                                );
                              }, icon: Icon(Icons.notifications,size: 40,color: Colors.amberAccent,))
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [

                        Container(
                          height: 140,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(

                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Text("Trouver et localiser un médicament près de chez vous",style: TextStyle(fontSize: 28,color: Colors.white),),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.15),
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width*0.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                  child: TextField(
                                    //controller: emailController,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.medication_outlined,color: Colors.blue,),
                                      labelText: 'Rechercher un médicament',
                                      labelStyle: TextStyle(color: Colors.blue),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Colors.amber)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.amber),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ),
                              ),
                             //Text("Rechercher vos medicaments",style: TextStyle(fontSize: 18),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
            ),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.15),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 13,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => recherche(),
                            ),
                          );
                        },
                        child: Container(
                          width: 270,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("Rechercher",style: TextStyle(fontSize: 20,color: Colors.blue),),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Text("Medicaments populaire",style: TextStyle(fontSize: 15,color: Colors.black),),
                SizedBox(width: MediaQuery.of(context).size.width*0.43,),
                Text("Voir plus",style: TextStyle(fontSize: 15,color: Colors.black))
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*0.98,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/drugs.png'), // Image
                        fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 6,),
                  Container(
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("PARACETAMOL EG 1g,comprimé",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        SizedBox(height: 10,),
                        Text("plaquette(s) PVC-Aluminium de 8 comprimé(s)"),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.money,color: Colors.blue,size: 20,),
                            SizedBox(width: 10,),
                            Text("Entre 1500 et 2000 FCFA",style: TextStyle(color: Colors.blue,fontSize: 17),)
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],

              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/drugs.png'), // Image
                        fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 6,),
                  Container(
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("PARACETAMOL EG 1g,comprimé",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        SizedBox(height: 10,),
                        Text("plaquette(s) PVC-Aluminium de 8 comprimé(s)"),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.money,color: Colors.blue,size: 20,),
                            SizedBox(width: 10,),
                            Text("Entre 1500 et 2000 FCFA",style: TextStyle(color: Colors.blue,fontSize: 17),)
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],

              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/drugs.png'), // Image
                        fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 6,),
                  Container(
                    height: 130,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("PARACETAMOL EG 1g,comprimé",style: TextStyle(fontSize: 20,color: Colors.blue),),
                        SizedBox(height: 10,),
                        Text("plaquette(s) PVC-Aluminium de 8 comprimé(s)"),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.money,color: Colors.blue,size: 20,),
                            SizedBox(width: 10,),
                            Text("Entre 1500 et 2000 FCFA",style: TextStyle(color: Colors.blue,fontSize: 17),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Text("Pharmacie proche",style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                Text("Voir plus",style: TextStyle(fontSize: 20,color: Colors.black),)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Container(
              height:MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage('assets/drugs.png'), // Image
                              fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 23,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("PHARMACIE DES FACULTES",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                SizedBox(width: 30,),
                                Icon(Icons.bookmark,color: Colors.amber,size: 40,)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 110,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(width: 10,),
                            Text("Galerie Commerciale M'BOLO, Libreville")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.transgender_outlined),
                            SizedBox(width: 10,),
                            Text("2h23 à pied - 51 mins en voiture")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(width: 10,),
                            Text("098765443")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("Ouvert")),
                            ),
                            SizedBox(width: 10,),
                            Text("- Ferme à 20h")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height:MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage('assets/drugs.png'), // Image
                              fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 23,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("PHARMACIE DES FACULTES",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                SizedBox(width: 30,),
                                Icon(Icons.bookmark,color: Colors.amber,size: 40,)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 110,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(width: 10,),
                            Text("Galerie Commerciale M'BOLO, Libreville")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.transgender_outlined),
                            SizedBox(width: 10,),
                            Text("2h23 à pied - 51 mins en voiture")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(width: 10,),
                            Text("098765443")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("Ouvert")),
                            ),
                            SizedBox(width: 10,),
                            Text("- Ferme à 20h")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height:MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage('assets/drugs.png'), // Image
                              fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 23,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("PHARMACIE DES FACULTES",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                SizedBox(width: 30,),
                                Icon(Icons.bookmark,color: Colors.amber,size: 40,)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 110,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(width: 10,),
                            Text("Galerie Commerciale M'BOLO, Libreville")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.transgender_outlined),
                            SizedBox(width: 10,),
                            Text("2h23 à pied - 51 mins en voiture")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(width: 10,),
                            Text("098765443")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("Ouvert")),
                            ),
                            SizedBox(width: 10,),
                            Text("- Ferme à 20h")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              height:MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.98,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                              image: AssetImage('assets/drugs.png'), // Image
                              fit: BoxFit.cover, // Ajuster l'image pour couvrir tout le conteneur
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 23,),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("PHARMACIE DES FACULTES",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                SizedBox(width: 30,),
                                Icon(Icons.bookmark,color: Colors.amber,size: 40,)
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 110,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.map),
                            SizedBox(width: 10,),
                            Text("Galerie Commerciale M'BOLO, Libreville")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.transgender_outlined),
                            SizedBox(width: 10,),
                            Text("2h23 à pied - 51 mins en voiture")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(width: 10,),
                            Text("098765443")
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("Ouvert")),
                            ),
                            SizedBox(width: 10,),
                            Text("- Ferme à 20h")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          ],

        ),

      ),
        recherche(),
        map(),
        favoris(),
      ][currentPageIndex],
    );

  }
}
