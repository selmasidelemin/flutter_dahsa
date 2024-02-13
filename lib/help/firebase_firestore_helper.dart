import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application/models/Categorymodel.dart';

class FirebaseFirestoreHelper {
  static FirebaseFirestoreHelper instance = FirebaseFirestoreHelper();
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<Categorymodel>> getCategories() async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _firebaseFirestore.collection("Categories").get();

      List<Categorymodel> categoryList = querySnapshot.docs
          .map((doc) => Categorymodel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return categoryList;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
