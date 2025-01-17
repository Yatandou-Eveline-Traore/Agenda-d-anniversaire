
import 'package:flutter/material.dart';
import 'package:projet/models/anniversaire.dart';
import 'package:projet/widgets/anniversaire_details.dart';


class AnniversaireWidget extends StatelessWidget {
  final Anniversaire anniversaire;
  const AnniversaireWidget({super.key, required this.anniversaire});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => AnniversaireDetails(
          anniversaire: anniversaire)));
        
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 15,
          child: Container(
            height: 100,
            width: double.infinity,
             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XFFB5A6A3) ,
                ),
                child: ListTile(
                  /* Container(
                    height: 50,
                    width: 50,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: new DecorationImage(image: AssetImage(anniversaire.imageUrl),
                  )),
                  ),*/
                  title: Text(anniversaire.nom,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                 subtitle: Text(anniversaire.description),
                trailing: Text(anniversaire.date),
                ),
                
               
          ),
        ),
      ),
    );
  }
}