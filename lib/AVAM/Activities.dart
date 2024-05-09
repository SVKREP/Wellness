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

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              ////////////////////////////////////////////////////////////////////////
              SizedBox(height: 10,),
              //////////////////////////////////////////////////////////////////////
              Container(
                alignment: Alignment.center,
                height: 366,
                width: 340,

                decoration: BoxDecoration(
                  color: Colors.tealAccent.withOpacity(0),
                  borderRadius: BorderRadius.circular(23.0),
                  border: Border.all(
                    color: Colors.tealAccent.withOpacity(0.2),
                    width: 3.0,
                  ),

                ),

                child: Column(

                  children: <Widget>[

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),

                      child: TextButton(

                        onPressed:(){
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => Wellness()));
                        },

                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: <Widget>[

                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),

                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Wellness',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),
                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.3),

                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),

                      child: TextButton(

                        onPressed:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => Emotions()));},

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),


                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Emotions',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),

                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.3),

                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),
                      child: TextButton(

                        onPressed:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => Stress()));},

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),


                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Stress',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),



                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.3),

                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),

                      child:TextButton(

                        onPressed:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => relaxation()));},

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),


                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Relaxation',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),

                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.3),

                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),


                      child:TextButton(

                        onPressed:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => mindfullness()));},

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),


                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Mindfulness',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),

                    ),

                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        border: Border.all(
                          color: Colors.tealAccent.withOpacity(0.2),
                          width: 3.0,
                        ),
                      ),
                      child:TextButton(

                        onPressed:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => sleep()));},

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[


                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              MyCustomIcons.circle_sharp, // Use the custom IconData
                              size: 20.0, // Adjust the size as needed
                              color: Colors.white, // Adjust the color as needed
                            ),


                            SizedBox(
                              width: 40,
                            ),

                            Text(
                              'Sleep',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                          ],

                        ),

                      ),


                    ),


                  ],
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