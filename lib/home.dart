import 'package:flutter/material.dart';
import 'package:projet/models/anniversaire.dart';
import 'package:projet/widgets/anniversaire_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Anniversaire> datas = [
    Anniversaire("Nadège", "15 Décembre", "Anniversaire de ma grande soeur")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste d'Anniversaire", 
      style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 12,
      backgroundColor: const Color(0XFF9F7962),
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, int index) {
          return AnniversaireWidget(anniversaire: datas[index]);
        },
      ),
    );
  }
}