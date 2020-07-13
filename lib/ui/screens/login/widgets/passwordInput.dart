import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class PasswordInput extends StatelessWidget {
  String mPassword;

  PasswordInput({@required this.mPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
          fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),
      validator: (password) {
        Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{8,20}$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(password))
          return 'Password should contains at least 1 lowercase, 1 uppercase, 1 digit, length between 8 to 20';
        else
          return null;
      },
      onSaved: (password) => mPassword = password,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.black26)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.orange)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.redAccent)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.lightBlueAccent)),
        errorMaxLines: 2,
        fillColor: Colors.black26,
        filled: true,
        hintText: 'Enter your Password',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
        prefixIcon: Container(
          padding: EdgeInsets.all(2),
          child: Container(
            color: Colors.white,
            child: Icon(Icons.lock, color: Colors.black54, size: 25),
          ),
        ),
      ),
    );
  }
}
