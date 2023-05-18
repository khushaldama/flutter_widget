import 'package:flutter/material.dart';

import 'main.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController pass =TextEditingController();
  TextEditingController uname=new TextEditingController();
  TextEditingController num1=new TextEditingController();
  TextEditingController num2=new TextEditingController();
  TextEditingController num3=new TextEditingController();
  TextEditingController num4=new TextEditingController();

  String un="admin";
  String pw="password";
  void login(){

    String username=uname.text;
    String number1=num1.text;
    String number2=num2.text;
    String number3=num3.text;
    String number4=num4.text;

//for pin password
//     if(username=='admin' && number1=='2'&& number2=='3'&& number3=='2'&& number4=='3'){
//       Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistrationPage()));
//     }
//     else{
//       print("Please enter correct data");
//     }



  }

  void reset(){
    uname.text="";
    pass.text="";
    num1.text="";
    num2.text="";
    num3.text="";
    num4.text="";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: uname,
              decoration: InputDecoration(
                hintText: 'Enter Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))
              ),
            ),

            SizedBox(height: 5,),

 //for string password ui
            TextField(
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero)
                  ),hintText: 'Enter Password'
              ),
            ),


 //for pin password ui
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: TextField(
            //         controller: num1,
            //         minLines: 1,
            //         maxLines: 1,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))
            //         ),
            //       ),
            //     ),
            //
            //     SizedBox(width: 5,),
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: TextField(
            //         controller: num2,
            //         minLines: 1,
            //         maxLines: 1,
            //         decoration: InputDecoration(
            //             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))
            //         ),
            //       ),
            //     ),
            //
            //     SizedBox(width: 5,),
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: TextField(
            //         controller: num3,
            //         minLines: 1,
            //         maxLines: 1,
            //         decoration: InputDecoration(
            //             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))
            //         ),
            //       ),
            //     ),
            //
            //     SizedBox(width: 5,),
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: TextField(
            //         controller: num4,
            //         minLines: 1,
            //         maxLines: 1,
            //         decoration: InputDecoration(
            //             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero))
            //         ),
            //       ),
            //     ),
            //
            //   ],
            // ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){


//for string password
                  if(un==uname.text && pw==pass.text){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistrationPage()));
                  }
                  else{
                    print("Please enter correct data");
                  }
                }, child: Text("Login")),

                SizedBox(width: 5,),

//for pin password
                // ElevatedButton(onPressed: login, child: Text("Login")),
                ElevatedButton(onPressed: reset, child: Text("Reset"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
