import 'package:flutter/material.dart';
import 'package:pharma_plus/Favoris/favoris.dart';
import 'package:pharma_plus/Recherche/recherche.dart';

import '../Acceuil/home.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  Color _iconColor = Colors.white;
  Color _iconColor1 = Colors.white;
  Color _iconColor2 = Colors.amber;
  Color _iconColor3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/carte.jpg")
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              width: 430,
              child: TextFormField(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.blue,),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Rechercher",
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
