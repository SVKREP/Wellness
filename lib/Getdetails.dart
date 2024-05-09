import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetDetails extends StatelessWidget {

  final String documentId;
  GetDetails({required this.documentId});


  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),

        builder: ((context,snapshot){
          print(documentId);
          if(snapshot.connectionState == ConnectionState.done)
          {
            Map<String,dynamic> data =
            snapshot.data!.data() as Map<String,dynamic>;
            return Text('First Name : ${data['first']}',style: TextStyle(fontSize: 18.0, color: Colors.black),);
          }
          return Text('loading');
        })
    );
  }
}
