import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellness/Profilepage.dart';
import 'package:wellness/LoginPage.dart';
import 'package:wellness/Authpage.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

        body:StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context,snapshot) {
              if(snapshot.hasData) {
                print('logged in');
                return Profile();
              }
              else {
                print('not logged in');
                return Auth();
              }
            }
        )
    );
  }
}
