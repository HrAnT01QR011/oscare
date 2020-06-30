import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double height;
  final double width;

  const LogoWidget({@required this.height, @required this.width})
      : assert(height != null),
        assert(width != null);

  @override
  Widget build(BuildContext context) {
    return Image.asset('res/images/logo.png',
        width: width,
        height: height,
        alignment: Alignment.topCenter);
  }
}
