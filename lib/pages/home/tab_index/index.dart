import 'package:flutter/material.dart';
import 'package:practice/pages/home/info/index.dart';
import 'package:practice/pages/home/tab_index/index_navigator.dart';
import 'package:practice/pages/home/tab_index/index_recommend.dart';
import 'package:practice/widgets/common_swipper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabIndex'),
      ),
      body: ListView(
        children: <Widget>[
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommend(),
          Info(
            showTitle: true,
          ),
          Text('這裡是內容區域'),
        ],
      ),
    );
  }
}
