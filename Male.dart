import 'package:flutter/material.dart';

class Male extends StatelessWidget {
  Male({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Male Set-2")),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I am a Male",style: TextStyle(color: Colors.white)),
            Icon(Icons.male,size: 100,),
          ],
        ),
      ),
    );
  }
}
