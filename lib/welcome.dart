import 'package:flutter/material.dart';
import 'package:projet/home.dart';
import 'package:projet/login.dart';

class Welcome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 243, 111),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 30,
            ) ,
            child: Column(
              children: [
                Login(delais: 1500, 
                child: Container(
                  height: 200,
                  child: Image.asset('images/images.jpg'),
                )),
                Login(delais: 1500, 
                child: Container(
                  height: 350,
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text("Tous tes anniversaires en un coup d'oeil", 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'TimesNewRoman',
                      fontSize: 18,
                    ),
                    ),
                )),
                Login(delais: 4500, 
                child: Container(
                  width: double.infinity,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13)
                    ),
                    child: Text('Démarrer'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    ),
                )),

              ],
            ),
          ),),
    );
  }
}