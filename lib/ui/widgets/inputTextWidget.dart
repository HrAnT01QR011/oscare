import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String mHintText;
  final String mKeyboardType;
  final String mIcon;

  EditText(
      {@required this.mHintText,
      @required this.mKeyboardType,
      @required this.mIcon})
      : assert(mHintText != null),
        assert(mKeyboardType != null),
        assert(mIcon != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
