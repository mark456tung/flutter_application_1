import 'package:flutter/material.dart';

import 'index_recommend_data.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommendItemWidget(
    this.data, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(data.navigateUri);
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    data.title,
                    style: textStyle,
                  ),
                  Text(
                    data.subTitle,
                    style: textStyle,
                  ),
                ],
              ),
              Image.asset(
                data.imageUri,
                width: 55.0,
              ),
            ],
          ),
        ));
  }
}
