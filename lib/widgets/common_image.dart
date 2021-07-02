import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';

final networkUriReg = RegExp('^http');
final loaclUriReg = RegExp('^static');

class CommonImage extends StatelessWidget {
  final String src;
  final double width;
  final double height;
  final BoxFit fit;

  const CommonImage(this.src, {Key key, this.width, this.height, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (networkUriReg.hasMatch(src)) {
      return Image(
        width: width,
        height: height,
        fit: fit,
        image: AdvancedNetworkImage(
          src,
          useDiskCache: true,
          cacheRule: CacheRule(maxAge: Duration(days: 7)),
          timeoutDuration: Duration(seconds: 20),
        ),
      );
    }
    if (loaclUriReg.hasMatch(src)) {
      return Image.asset(
        src,
        width: width,
        height: height,
        fit: fit,
      );
    }
    assert(false, '圖片src不合法');
    return Container();
  }
}
