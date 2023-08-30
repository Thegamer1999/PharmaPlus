import 'package:flutter/material.dart';
import 'package:pharma_plus/Acceuil/home.dart';
import 'package:pharma_plus/Favoris/favoris.dart';
import 'package:pharma_plus/Map/map.dart';



class recherche extends StatefulWidget {
  const recherche({Key? key}) : super(key: key);

  @override
  State<recherche> createState() => _rechercheState();
}

class _rechercheState extends State<recherche> {
  Color _iconColor = Colors.white;
  Color _iconColor1 = Colors.amber;
  Color _iconColor2 = Colors.white;
  Color _iconColor3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 70,),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*0.03),
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*0.93,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.86,
                          child: TextField(
                            //controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.medication_outlined,color: Colors.amberAccent,),
                              labelText: 'Rechercher un médicament',
                              labelStyle: TextStyle(color: Colors.amberAccent),
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
                    SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                    Container(
                      width: 360,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber, // Couleur de fond du bouton
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Rechercher",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              
            ],
          ),
          SizedBox(height: 40,),
          
          Row(
            children: [
              SizedBox(width: 20,),
              Text('Récents',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 200,),
              Text('Tout effacer',style: TextStyle(fontSize: 20,color: Colors.amberAccent),)
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 27,),
              Text('Efferalgan',style: TextStyle(fontSize: 16),),
              SizedBox(width: 240,),
              Icon(Icons.dangerous_outlined,color: Colors.amberAccent,)
            ],
          ),


        ],
      ),

    );
  }
}
