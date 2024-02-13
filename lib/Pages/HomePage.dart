import 'package:flutter/material.dart';
import 'package:flutter_application/help/firebase_firestore_helper.dart';
import 'package:flutter_application/models/Categorymodel.dart';
import 'package:flutter_application/widgets/CategoriesWidget.dart';
import 'package:flutter_application/widgets/ItemsWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Categorymodel> categoryList = [];

  @override
  void initState() {
    super.initState();
    getCategoryList();
  }

  Future<void> getCategoryList() async {
    List<Categorymodel> categories =
        await FirebaseFirestoreHelper.instance.getCategories();
    setState(() {
      categoryList = categories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ... Autres widgets
          CategoriesWidget(categoryList: categoryList),
          // ... Autres widgets
          ItemsWidget(),
        ],
      ),
      // ... Autres éléments de la page
    );
  }
}
