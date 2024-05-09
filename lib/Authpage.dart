import 'package:flutter/material.dart';
import 'package:wellness/LoginPage.dart';
import 'package:wellness/Registrationpage.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool sLP = true;

  void toggleScreens()
  {
    setState(() {
      sLP = !sLP;
    });

  }


  @override
  Widget build(BuildContext context) {
    if(sLP)
    {
      return Login(sRP: toggleScreens);
    }
    else
    {
      return Register(sLP: toggleScreens);
    }
  }
}
