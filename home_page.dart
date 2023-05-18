import 'package:exam/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _number1 = TextEditingController();
  TextEditingController _number2 = TextEditingController();
  TextEditingController _number3 = TextEditingController();
  TextEditingController _number4 = TextEditingController();

  void _login() {
    String username = _username.text.trim();
    String number1 = _number1.text.trim();
    String number2 = _number2.text.trim();
    String number3 = _number3.text.trim();
    String number4 = _number4.text.trim();

    if (username == 'admin' &&
        number1 == '2' &&
        number2 == '3' &&
        number3 == '2' &&
        number4 == '3') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomePage(),
        ),
      );
    } else {
      print('Error Show');
    }
  }

  void _reset() {
    setState(() {
      _username.text = '';
      _number1.text = '';
      _number2.text = '';
      _number3.text = '';
      _number4.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    controller: _number1,
                    minLines: 1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      // hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    controller: _number2,
                    minLines: 1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      // hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    controller: _number3,
                    minLines: 1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      // hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    controller: _number4,
                    minLines: 1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      // hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
