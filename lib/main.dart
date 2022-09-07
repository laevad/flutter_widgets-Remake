  import 'package:flutter/material.dart';

import 'pages/homepage.dart';
import 'pages/login_page.dart';
import 'pages/recipes_page.dart';
import 'pages/registration_page.dart';
import 'models/favorites_model.dart';
import 'package:provider/provider.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(YummyRecipes());
}

class YummyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritesModel(),
      child: MaterialApp(title: "Yummy Recipes", initialRoute: '/', routes: {
        '/': (context) => HomePage(),
        '/recipes': (context) => RecipesPage(),
        '/login': (context) => LoginPage(),
        '/registration': (context) => RegistrationPage()
      }
        // home: HomePage(),
      ),
    );
  }
}
