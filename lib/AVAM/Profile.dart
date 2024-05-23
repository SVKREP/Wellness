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

  final List<Activity> activities = [
    Activity(name: "Wellness", progress: 0.70),
    Activity(name: "Emotions", progress: 0.50),
    Activity(name: "Stress", progress: 0.20),
    Activity(name: "Relaxation", progress: 0.30),
    Activity(name: "Mindfullness", progress: 0.20),
    Activity(name: "Sleep", progress: 0.40),
  ];

  double calculateOverallProgress() {
    double totalProgress = activities.fold(0, (sum, activity) => sum + activity.progress);
    return totalProgress / activities.length;
  }

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
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Image(
                height: 180,
                width: 180,
                image: AssetImage('assets/logo.png'),
              ),
              SizedBox(height: 5),
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
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.black.withOpacity(0.2),
                      child: Icon(
                        Icons.person,
                        size: 55.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 25),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 8.0),
                        Text(
                          'Edison Nalluri',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'edison@gmail.com',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '24',
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              LinearProgressIndicator(
                value: calculateOverallProgress(),
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  return ActivityCard(activity: activities[index]);
                },
              ),

              SizedBox(height: 40),
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




class Activity {
  final String name;
  final double progress;

  Activity({required this.name, required this.progress});
}

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.tealAccent.withOpacity(0.7),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircularProgressIndicator(
              value: activity.progress,
              backgroundColor: Colors.black,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white ),
                ),
                SizedBox(height: 10),
                Text(
                  '${(activity.progress * 100).toStringAsFixed(0)}%',
                  style: TextStyle(fontSize: 16, color:Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}