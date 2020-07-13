import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

// ignore: must_be_immutable
class EmailInput extends StatelessWidget {

  String mEmail;

  EmailInput({@required this.mEmail});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
          fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),
      validator: (email) =>
          EmailValidator.validate(email) ? null : "Invalid email address",
      onSaved: (email) => mEmail = email,
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
        fillColor: Colors.black26,
        filled: true,
        hintText: 'Enter your Username',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
        prefixIcon: Container(
          padding: EdgeInsets.all(2),
          child: Container(
            color: Colors.white,
            child: Icon(Icons.person, color: Colors.black54, size: 25),
          ),
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }
}
