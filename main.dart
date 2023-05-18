import 'package:exam_q1/Female.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'Male.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);


  @override
  State<login> createState() => _MainAppState();
}

class _MainAppState extends State<login> {

  TextEditingController uname =TextEditingController();
  TextEditingController pass =TextEditingController();

  String un="khushal";
  String pw="khushal123";

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login Page"),
        ),
        body: Column(
          children: [
            TextField(
              controller: uname,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.zero)
                ),hintText: 'Enter UserName'
              ),
            ),
            TextField(
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero)
                  ),hintText: 'Enter Password'
              ),
            ),
            
            ElevatedButton(onPressed: () {

              if(un==uname.text && pw==pass.text){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Male()));
              }
              else{
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Female()));
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}


// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Gender Selector',
//       home: GenderSelectionScreen(),
//     );
//   }
// }
//
// class GenderSelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Set-2'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'I am a',
//               style: TextStyle(fontSize: 24),
//             ),
//             Gap(20),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>Male()));
//             }, child: Text("Male")),
//
//
//             Gap(20),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>Female()));
//             }, child: Text("Female")),
//           ],
//         ),
//       ),
//     );
//   }
// }
