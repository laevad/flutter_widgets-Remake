import 'package:Flutter_Widgets/widgets/recipe_menu.dart';
import 'package:flutter/material.dart';

import '../widgets/account_menu.dart';
import '../widgets/recipe_description.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yummy Recipes"),
        backgroundColor: Color.fromRGBO(56, 142, 60, 1),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  "Recipe of the day",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                color: Color.fromRGBO(255, 87, 34, 1),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Image.asset('assets/images/friedchicken.jpg'),
              ),
              RecipeDescription(),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 5),
              ),
              Text(
                "Recipes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              RecipeMenu(),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              AccountMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
