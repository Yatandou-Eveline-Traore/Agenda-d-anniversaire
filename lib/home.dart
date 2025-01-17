import 'package:flutter/material.dart';
import 'package:projet/models/anniversaire.dart';
import 'package:projet/welcome.dart';
import 'package:projet/widgets/anniversaire_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Anniversaire> datas = [
    Anniversaire("Nadège", "15 Décembre", "Anniversaire de ma grande soeur", "images/cadeau.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pour le menu à gauche
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/cadeau.png"))),
            ),
            Center(
              child: Text("Tout une année en un")),
              Divider(

              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context) {
                    return const Home();
                    }));
                },
                child: ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
              ),
              Divider(),
               InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, 
                   MaterialPageRoute(builder: (context) {
                   return const Home();
              }));
               },
               child: ListTile(title: Text("Liste des anniversaires"),
               leading: Icon(Icons.list),),
               ),
               Divider(),
               InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, 
                   MaterialPageRoute(builder: (context) {
                   return const Welcome();
              }));
               },
               child: ListTile(title: Text("Sortie"),
               leading: Icon(Icons.logout),),
               ),
               Divider(),
          ],
        ),
      ),
      //L'affichhage du titre au centre 
      appBar: AppBar(
        title: const Text("Liste d'Anniversaire", 
      style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 12,
      backgroundColor: const Color(0XFF9F7962),
      
      ),
      // affichage des données inscrites dans le tableau
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, int index) {
          return AnniversaireWidget(anniversaire: datas[index]);
        },
      ),
      
    );
    
  }
}