  import 'models/auth_model.dart';
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
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => FavoritesModel(),),
          ChangeNotifierProvider(create: (context) => AuthModel(),),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Yummy Recipes", initialRoute: '/login', routes: {
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
