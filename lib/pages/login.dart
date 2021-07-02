import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
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
                obscureText: !showPassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Please enter Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text('login', style: TextStyle(color: Colors.white)),
              onPressed: () {
                //todo
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('without username?'),
              TextButton(
                child: Text('sign up', style: TextStyle(color: Colors.green)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'register');
                },
              )
            ])
          ]),
        ));
  }
}

// ElevatedButton style  https://stackoverflow.com/questions/66835173/how-to-change-background-color-of-elevated-button-in-flutter-from-function
