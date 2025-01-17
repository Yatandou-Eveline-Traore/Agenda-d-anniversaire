import 'package:flutter/material.dart';
import 'package:projet/models/anniversaire.dart';

class AnniversaireDetails extends StatelessWidget {
  final Anniversaire anniversaire;
  const AnniversaireDetails({super.key, required this.anniversaire});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(anniversaire.nom),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: new DecorationImage(image: AssetImage(anniversaire.imageUrl),
                    )),
            ),
          ),
        ],
      ),
    );
  }
}