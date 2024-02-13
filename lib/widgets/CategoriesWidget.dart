import 'package:flutter/material.dart';
import 'package:flutter_application/models/Categorymodel.dart';


class CategoriesWidget extends StatefulWidget {
  final List<Categorymodel> categoryList; // Ajoutez ce paramètre

  CategoriesWidget({required this.categoryList}); // Mettez à jour le constructeur

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < widget.categoryList.length; i++) // Utilisez widget.categoryList
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/${i + 1}.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    widget.categoryList[i].id, // Accédez à la propriété 'id'
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0XFF4C53A5),
                    ),
                  ),
                  // Vous pouvez également ajouter une Image pour 'image' si nécessaire.
                ],
              ),
            ),
        ],
      ),
    );
  }
}
