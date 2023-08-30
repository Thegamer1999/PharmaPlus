
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pharma_plus/Onboard/onboard1.dart';

import '../Acceuil/home.dart';


class board extends StatefulWidget {
  const board({Key? key}) : super(key: key);

  @override
  State<board> createState() => _boardState();
}

class _boardState extends State<board> {
  int indexation = 0;
  late PageController _controller;
  late SharedPreferences prefs;
  bool repeat = false;

  void start() async{
    prefs = await SharedPreferences.getInstance();
    repeat = prefs.getBool('repeat')!;
    setState(() {
    });
    if(repeat){
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>MyCustomSplashScreen()), (route) => false);
    }
  }
  @override
  void initState() {
    _controller =PageController(initialPage: 0);
    super.initState();
    start();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(child: PageView.builder(
                controller:  _controller,
                itemCount: page.length,
                onPageChanged: (int index){
                  setState(() {
                    indexation = index;
                  });
                },
                itemBuilder: (_,i){
                  return Column(

                    children:<Widget> [
                      SizedBox(height: 15,),
                      Container(
                        child: Image.asset(page[i].image),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        child: Text(page[i].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Avenir-Heavy',
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Text(page[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ) ,
                        ),
                      )
                    ],
                  );
                }

            ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    page.length,
                        (index) => buildDot(index, context)),
              ),
            ),
            Container(
              height: 65,
              margin: EdgeInsets.all(50),
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  prefs.setBool('repeat', true);
                  if(indexation == page.length - 1){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>home()), (route) => false);
                  }
                  _controller.nextPage(duration: Duration(
                      milliseconds: 300),
                      curve: Curves.bounceIn);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(color:Colors.blueAccent),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 105,vertical: 19),
                    child:  Center(child: Text(indexation == page.length - 1 ?'Valider':'Suivant',style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                ),
              ),
            )
          ],
        )

    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: indexation == index ? 25: 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueAccent,
      ),
    );
  }
}
