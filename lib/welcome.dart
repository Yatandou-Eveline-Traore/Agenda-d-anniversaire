import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    var isExpanded;
    return Scaffold(

        //backgroundColor: const Color.fromARGB(255, 226, 139, 238),
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
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
            /*ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Text(
                'Demarer',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),*/
            
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                
                child: FloatingActionButton(
                  backgroundColor: const Color(0XFF9F7962),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    // Respond to button press
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Home()));
                  },
                 child: Icon(Icons.add_circle_outline),
                   
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
