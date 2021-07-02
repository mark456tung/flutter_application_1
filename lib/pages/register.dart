import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(30),
          child: ListView(children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Username', hintText: 'Please enter Username'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Please enter Password',
                )),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password again',
                  hintText: 'Please enter Password',
                )),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text('register', style: TextStyle(color: Colors.white)),
              onPressed: () {
                //todo
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('already have account?'),
              TextButton(
                child: Text('sign in', style: TextStyle(color: Colors.green)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'login');
                },
              )
            ])
          ]),
        ));
  }
}

// ElevatedButton style  https://stackoverflow.com/questions/66835173/how-to-change-background-color-of-elevated-button-in-flutter-from-function
