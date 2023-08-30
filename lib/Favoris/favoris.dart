import 'package:flutter/material.dart';
import 'package:pharma_plus/Acceuil/home.dart';
import 'package:pharma_plus/Map/map.dart';

import '../Recherche/recherche.dart';


class favoris extends StatefulWidget {
  const favoris({Key? key}) : super(key: key);

  @override
  State<favoris> createState() => _favorisState();
}

class _favorisState extends State<favoris> {
  Color _iconColor = Colors.white;
  Color _iconColor1 = Colors.white;
  Color _iconColor2 = Colors.white;
  Color _iconColor3 = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                color: Colors.blue.shade500,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [

                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  Center(
                    child: Text("Vos favoris",style: TextStyle(fontSize: 30,color: Colors.amber),),
                  ),
                  Container(
                    width: 130,
                    child: Divider(
                      thickness: 1,
                      indent: 3,
                      endIndent: 3,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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

          ],
        ),
      ),

    );
  }
}
