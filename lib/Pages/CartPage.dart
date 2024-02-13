import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/CartAppBar.dart';
import 'package:flutter_application/widgets/CartBottomNavBar.dart';
import 'package:flutter_application/widgets/CartItemSample.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CartAppBar(

        ),
        Container(
          height: 700,
          padding: EdgeInsets.only(top:15),
          decoration: BoxDecoration(
            color: Color(0XFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(children: [
            CartItemSample(),
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10)

              //   ),
              margin: EdgeInsets.symmetric(vertical:20,horizontal: 13),
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color:Color(0XFF4C53A5),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:10),
                  child: Text(
                    "Add Coupen Code",
                    style: TextStyle(
                      color: Color(0XFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],),

            )
          ]),
        )
      ],),

      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}