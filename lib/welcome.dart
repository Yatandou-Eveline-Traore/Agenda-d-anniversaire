
import 'package:flutter/material.dart';
import 'package:projet/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //affichage du boutton en bas à droite
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF9F7962),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
        }) ,
        
         body: Container(
          //construction de notre page welcome
          decoration: BoxDecoration(
          image:  DecorationImage(
             image: AssetImage("images/fond.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('BIENVENUE DANS VOTRE AGENDA',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'TimesNewRoman',
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center),
                 Text('Tous vos anniversaire en un coup d\'oeil',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'TimesNewRoman',
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center),
          
            
            
                
                /*FloatingActionButton(
                  
                  backgroundColor: const Color(0XFF9F7962),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    // Respond to button press
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Home()));
                  },
                 child: const Icon(Icons.add_circle_outline),
                   
                ),*/

              
            
          ],
        ),
      ),
    ));
  }
}
