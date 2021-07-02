import 'package:flutter/material.dart';
import 'package:practice/routes.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('current page: $name'),
        ),
        body: ListView(children: <Widget>[
          TextButton(
              child: Text(Routes.home),
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              }),
          TextButton(
              child: Text(Routes.login),
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              }),
          TextButton(
              child: Text('不存在的頁面'),
              onPressed: () {
                Navigator.pushNamed(context, '/aaaaa');
              }),
          TextButton(
              child: Text('detail id:2222'),
              onPressed: () {
                Navigator.pushNamed(context, '/room/2222');
              }),
        ]));
  }
}
