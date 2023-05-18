import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController tec1 =  TextEditingController();
    TextField tf1 =  TextField(controller:tec1,decoration:  const InputDecoration(border:OutlineInputBorder(),labelText:'Book Title') );

    ElevatedButton b1 = ElevatedButton(onPressed: ()
    async {
      final String title = tec1.text;

      /*
      CollectionReference cr = FirebaseFirestore.instance.collection('books');
      var doc = cr.doc();
      */

      //Step-1 Create a doc object
      //var doc = FirebaseFirestore.instance.collection('books').doc();
      var doc = FirebaseFirestore.instance.collection('books').doc('1');
      // Do not assign any id while creating the doc...


      //Step-2 Create a json
      final json = {
        'id': doc.id, // This assigns unique id to a document in the collection.
        'title': title
      };
      await doc.set(json);
      //await cr.add(json);

    }
        , child: const Text("Add"));


    Column cl1 =  Column(mainAxisSize:MainAxisSize.min,mainAxisAlignment:MainAxisAlignment.center,children: [tf1,b1]);

    return  MaterialApp(
      home: Scaffold(
        body: Center(
            child: cl1
        ),
      ),
    );
  }
}
