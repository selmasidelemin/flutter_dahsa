import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/HomePage.dart';
import 'package:flutter_application/Pages/CartPage.dart';
import 'package:flutter_application/Pages/ItemPage.dart';
//import 'package:flutter_application/Pages/main_page.dart';
// import 'package:get/get.dart';
//import 'package:flutter_application/Pages/adminlogin.dart';
//import 'package:flutter_application/Pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB7uoR_uQUwwxmIQQ4PlV717wv8xEMi2kg",
     appId: "1:1021144457250:android:4e286abe63e6cc2f4a2a7b", 
    messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
     projectId:"e-commerce-84617",
     ),
  );
  //
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    //  home: MainPage(),
      routes: {
        "/": (context) => HomePage(),
         "CartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage()
      },
    );
  }
}
