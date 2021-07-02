import 'package:flutter/material.dart';
import 'package:practice/pages/home/tab_index/index.dart';
import 'package:practice/widgets/page_content.dart';

List<Widget> tabViewList = [
  TabIndex(),
  PageContent(name: 'search'),
  PageContent(name: 'information'),
  PageContent(name: 'my'),
];

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: 'homepage', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: 'search', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: 'infomation', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: 'my', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabViewList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: barItemList,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ));
  }
}
