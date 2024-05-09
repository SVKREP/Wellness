import 'package:flutter/material.dart';
import 'package:wellness/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wellness/Profilepage.dart';

class Register extends StatefulWidget {

  final VoidCallback sLP;
  const Register({super.key,required this.sLP});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final lusername = TextEditingController();
  final lpassword  = TextEditingController();
  final lfirst = TextEditingController();
  final llast = TextEditingController();
  final lage = TextEditingController();
  @override
  void dispose()
  {
    lusername.dispose();
    lpassword.dispose();
    lfirst.dispose();
    llast.dispose();
    lage.dispose();
    super.dispose();
  }

  Future signUp() async
  {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: lusername.text.trim(),
      password: lpassword.text.trim(),
    );
    addUserDetails(lfirst.text.trim(), llast.text.trim(),
        int.parse(lage.text.trim()));

  }

  Future addUserDetails(String fn, String ln, int a) async
  {

    try {
      await FirebaseFirestore.instance.collection('users').add({
        'first': fn,
        'last': ln,
        'age': a,
      });
      print('Successfully got the details $fn and $ln and $a');
    }
    catch(e) {print('---------- $e');}
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/LS_background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),

        child: SingleChildScrollView(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
            crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
            children: <Widget>[
              SizedBox(height: 05,),
              ///////////////////////////////////////////////////
              Image(
                  height: 180,
                  width: 180,
                  image: AssetImage('assets/logo.png')
              ),
              ////////////////////////////////////////////////////
              Container(
                height: 90,
                width: 400,
                padding: EdgeInsets.symmetric(
                  //vertical:  10,
                  horizontal: 20,
                ),
                child: TextField(
                  controller: lfirst,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    label: Text(
                      'First Name',
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
              //////////////////////////////////////////////////////////////
              Container(
                height: 90,
                width: 400,
                padding: EdgeInsets.symmetric(
                  //vertical:  10,

                  horizontal: 20,
                ),
                child: TextField(
                  controller: llast,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    label: Text(
                      'Last Name',
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
              ////////////////////////////////////////////////
              Container(
                height: 90,
                width: 400,
                padding: EdgeInsets.symmetric(
                  //vertical:  10,
                  horizontal: 20,
                ),
                child: TextField(
                  controller: lage,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    label: Text(
                      'Age',
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
              ////////////////////////////////////////////////////
              Container(
                height: 90,
                width: 400,
                padding: EdgeInsets.symmetric(
                  //vertical:  10,
                  horizontal: 20,
                ),
                child: TextField(
                  controller: lusername,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    label: Text(
                      'Login ID',
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
              ///////////////////////////////////////////////////
              Container(
                height: 90,
                width: 400,
                padding: EdgeInsets.symmetric(
                  //vertical:  10,
                  horizontal: 20,
                ),
                child: TextField(
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
              ),
///////////////////////////////////////////////////
///////////////////////////////////////////////
              SizedBox(
                height: 20,
              ),


              GestureDetector(
                onTap: signUp,
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
                     'SIGN UP',
                     style: TextStyle(
                       fontSize: 17,
                       color: Colors.white,
                     ),
                   ),
                 ),
              ),

              SizedBox(
                height: 20,
              ),
              GestureDetector(
                 onTap: widget.sLP ,
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
            ],

          ),
        ),
      ),
    );
  }
}
