import 'package:flutter/material.dart';

class Female extends StatelessWidget {
  Female({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Female Set-2"),),
      backgroundColor: Colors.pink,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I am a Female",style: TextStyle(color: Colors.white),),
            Icon(Icons.female,size: 100,),
          ],
        ),
      ),
    );
  }
}
