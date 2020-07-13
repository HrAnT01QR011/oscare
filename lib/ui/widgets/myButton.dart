import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final mFormKey;
  final String mText;
  final mWidth;
  final Color mColor;

  const MyButton(
      {Key key,
      @required this.mFormKey,
      @required this.mText,
      @required this.mWidth,
      @required this.mColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: mColor,
      minWidth: mWidth,
      elevation: 9.0,
      height: 45,
      child: Text(
        mText,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
      ),
      onPressed: () {
        if (mFormKey.currentState.validate()) {
          mFormKey.currentState.save();
        }
      },
    );
  }
}
