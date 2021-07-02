import "package:flutter/material.dart";
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> defaultImages = [
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'https://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];
//搜尋指定pixel google:關鍵字 imagesize:750x424
var imageWidth = 750.0;
var imageHeight = 424.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;

  const CommonSwiper({Key key, this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imageWidth * imageHeight;
    return Container(
        height: height,
        child: Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        ));
  }
}
