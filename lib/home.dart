import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liste d'Anniversaire", 
      style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 12,
      backgroundColor: const Color.fromARGB(255, 201, 138, 3),
      ),
    );
  }
}