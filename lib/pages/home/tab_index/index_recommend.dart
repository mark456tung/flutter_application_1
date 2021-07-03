import 'package:flutter/material.dart';
import 'package:practice/pages/home/tab_index/index_recommend_item_widget.dart';

import 'index_recommend_data.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({Key key, this.dataList = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '房屋推薦',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              Text(
                '更多',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children:
                dataList.map((item) => IndexRecommendItemWidget(item)).toList(),
          )
        ],
      ),
    );
  }
}
