import 'package:flutter/material.dart';

import '../widgets/registrationform.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        backgroundColor: Color.fromRGBO(56, 142, 60, 1),
      ),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/login.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: RegistrationForm(),
              padding: EdgeInsets.all(12),
            ),
          ),
        ],
      ),
    );
  }
}
