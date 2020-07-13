import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeviceNameInput extends StatelessWidget {
  String mDeviceName;

  DeviceNameInput({@required this.mDeviceName});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      obscureText: false,
      keyboardType: TextInputType.text,
      style: TextStyle(
          fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),
      validator: (deviceName) {
        /* validator for device name register*/
        return null;
      },
      onSaved: (deviceName) => mDeviceName = deviceName,
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
        errorMaxLines: 1,
        fillColor: Colors.black26,
        filled: true,
        hintText: 'Please Give A Name To Your Device',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
        prefixIcon: Container(
          padding: EdgeInsets.all(2),
          child: Container(
            color: Colors.white,
            child: Icon(Icons.phone_android, color: Colors.black54, size: 25),
          ),
        ),
      ),
    );
  }
}
