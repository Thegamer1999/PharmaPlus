import 'package:flutter/material.dart';

import '../Acceuil/home.dart';


class notif extends StatefulWidget {
  const notif({Key? key}) : super(key: key);

  @override
  State<notif> createState() => _notifState();
}

class _notifState extends State<notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => home(),
                          ),
                        );
                      }, icon: Icon(Icons.arrow_back,color: Colors.amber,)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Text("Notifications",style: TextStyle(fontSize: 30),),
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
            SizedBox(height: 30,),
            Container(
              height: 130,
              width: 420,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
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
                          color: Colors.black.withOpacity(0.2),
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
            SizedBox(height: 30,),
            Container(
              height: 130,
              width: 420,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
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
                          color: Colors.black.withOpacity(0.2),
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
            SizedBox(height: 30,),
            Container(
              height: 130,
              width: 420,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
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
                          color: Colors.black.withOpacity(0.2),
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
            SizedBox(height: 20,),
            Container(
              height: 130,
              width: 420,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
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
                          color: Colors.black.withOpacity(0.2),
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
            SizedBox(height: 30,),
            Container(
              height: 130,
              width: 420,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
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
                          color: Colors.black.withOpacity(0.2),
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
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
