import 'package:flutter/material.dart';
import 'package:wellness/Account_Details_update.dart';
import 'package:wellness/AVAM/AP/Wellness.dart';
import 'package:wellness/AVAM/AP/emotions.dart';
import 'package:wellness/AVAM/AP/sleep.dart';
import 'package:wellness/AVAM/AP/mindfull.dart';
import 'package:wellness/AVAM/AP/relaxation.dart';
import 'package:wellness/AVAM/AP/stress.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wellness/Getdetails.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {

  
  


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            alignment: Alignment.center,
            fit: BoxFit.fill,
          ),
        ),

        child: SingleChildScrollView(
          child:  Column(
            //mainAxisAlignment: MainAxisAlignment.start, // Customize as needed
            // crossAxisAlignment: CrossAxisAlignment.center, // Customize as needed
            children: <Widget>[
              SizedBox(height: 10,),
              //////////////////////////////////////////////////////////////
              Image(
                  height: 180,
                  width: 180,
                  image: AssetImage('assets/logo.png')
              ),
              //////////////////////////////////////////////////////////
              SizedBox(height: 5,),
              ///////////////////////////////////////////////////////////////////////
              Container(
                alignment: Alignment.center,
                height: 100,
                width: 340,

                decoration: BoxDecoration(

                  color: Colors.tealAccent.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.tealAccent.withOpacity(0.2),
                    width: 3.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[

                    SizedBox(
                      width: 10,
                    ),

                    CircleAvatar(

                      radius: 35.0,
                      backgroundColor: Colors.black.withOpacity(0.2), // Background color of the circle
                      child: Icon(
                        Icons.person,
                        size: 55.0,
                        color: Colors.white, // Color of the person icon
                      ),
                    ),

                    SizedBox(
                      width: 25,
                    ),

                    Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget>[

                        SizedBox(height: 8.0),
                        Text(
                          'Edison Nalluri', // Replace with the user's name
                          style: TextStyle(fontSize: 18.0,),
                        ),

                        SizedBox(height: 5.0),
                        Text(
                          'edison@gmail.com', // Replace with the user's email
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),

                        SizedBox(height: 5.0),
                        Text(
                          '24', // Replace with the user's email
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              ////////////////////////////////////////////////////////////////////////
              SizedBox(height: 340,),
              //////////////////////////////////////////////////////////////////////




              Container(
                alignment: Alignment.center,
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.cyan.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(23.0),
                  border: Border.all(
                    color: Colors.tealAccent.withOpacity(0.2),
                    width: 3.0,
                  ),
                ),

                child: TextButton(

                  onPressed:(){FirebaseAuth.instance.signOut();},

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 45,
                      ),

                      SizedBox(
                        width: 80,
                      ),

                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                        ),
                      ),
                    ],

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

class MyCustomIcons {

  static const IconData account_circle_outlined = IconData(0xee35, fontFamily: 'MaterialIcons');
  static const IconData circle_notifications_outlined = IconData(0xef52, fontFamily: 'MaterialIcons');
  static const IconData contact_support_outlined = IconData(0xef7c, fontFamily: 'MaterialIcons');
  static const IconData comment_outlined = IconData(0xef6e, fontFamily: 'MaterialIcons');
  static const IconData power_settings_new = IconData(0xe4e3, fontFamily: 'MaterialIcons');
  static const IconData settings = IconData(0xe57f, fontFamily: 'MaterialIcons');
  static const IconData circle_sharp = IconData(0xe861, fontFamily: 'MaterialIcons');

  static const IconData checklist_sharp = IconData(0xe859, fontFamily: 'MaterialIcons');
  static const IconData library_music_outlined = IconData(0xf161, fontFamily: 'MaterialIcons');
  static const IconData article_outlined = IconData(0xee93, fontFamily: 'MaterialIcons');
  static const IconData featured_video_outlined = IconData(0xf04d, fontFamily: 'MaterialIcons', matchTextDirection: true);
  static const IconData account_circle = IconData(0xe043, fontFamily: 'MaterialIcons');

}