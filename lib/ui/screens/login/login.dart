import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:oscare/ui/widgets/logoWidget.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(LoginWidget());
  });
}

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connection Screen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginContainer(),
    );
  }
}

// ignore: must_be_immutable
class LoginContainer extends StatefulWidget {
  String username;
  String password;

  @override
  _LoginContainerState createState() {
    return _LoginContainerState();
  }
}

class _LoginContainerState extends State<LoginContainer> {
  bool rememberMeIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LogoWidget(width: 260, height: 260),
              TextFormField(
                textAlign: TextAlign.center,
                obscureText: false,
                validator: (String value) {
                  if (value.length == 0 || !value.contains('@')) {
                    return "Incorrect Email Address";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.black26,
                  filled: true,
                  hintText: 'Enter your Username',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.only(bottom: 1.0, top: 1.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide.none),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      color: Colors.white,
                      child: Icon(Icons.person, color: Colors.black54,size: 25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.0),
              TextFormField(
                textAlign: TextAlign.center,
                obscureText: false,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.black26,
                  filled: true,
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide.none),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(2),
                    child: Container(
                      color: Colors.white,
                      child: Icon(Icons.lock, color: Colors.black54,size: 25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                  width: double.infinity,
                  child: Material(
                    elevation: 9.0,
                    color: Colors.pinkAccent,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Center(
                        child: CheckboxListTile(
                          activeColor: Colors.pinkAccent,
                          value: rememberMeIsChecked,
                          title: Text("Remember me"),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool result) {
                            setState(() {
                              rememberMeIsChecked = !rememberMeIsChecked;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
