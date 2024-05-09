import 'package:flutter/material.dart';
import 'package:wellness/Registrationpage.dart';
import 'package:wellness/Profilepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class Login extends StatefulWidget {


  final VoidCallback sRP;
  const Login({super.key,required this.sRP});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final loginid = TextEditingController();
  final lpassword = TextEditingController();

  Future signIn() async
  {
    print('Successfully signed in');
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginid.text.trim(),
      password: lpassword.text.trim(),
    );
  }
  @override
  void dispose()
  {
    loginid.dispose();
    lpassword.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/LS_background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
          crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
          children: <Widget>[

            Image(
                height: 200,
                width: 200,
                image: AssetImage('assets/logo.png')
            ),

            Text(
              'Traquili TECH\n  the way of life',
              style: TextStyle(
                fontFamily: 'Qwigley',
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
//////////////////////////////////
            SizedBox(
              height: 40,
            ),

////////////////////////////////////////
            Container(
              height: 100,
              width: 400,
              padding: EdgeInsets.symmetric(
                vertical:  10,
                horizontal: 20,
              ),
              child: TextField(
                controller: loginid,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  label: Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  fillColor: Colors.black.withOpacity(0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                      width: 30,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
////////////////////////////////////////// need a blank
            Container(
              height: 160,
              width: 400,
              padding: EdgeInsets.symmetric(
                vertical:  10,
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
                crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
                children: <Widget>[

                  TextField(
                    controller: lpassword,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      fillColor: Colors.black.withOpacity(0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 30,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),


                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'forgot password ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
///////////////////////////

//////////////////////////
            GestureDetector(
              onTap: signIn,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.white, // Border color
                    width: 2.0, // Border width
                  ),
                  color: Colors.black.withOpacity(0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
////////////////////////////////////

            SizedBox(
              height: 40,
            ),

//////////////////////////////////
            GestureDetector(
              onTap: widget.sRP,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: Text(
                  'Registration for new user',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
