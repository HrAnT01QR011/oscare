import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:oscare/ui/screens/login/widgets/emailInput.dart';
import 'package:oscare/ui/screens/login/widgets/passwordInput.dart';
import 'package:oscare/ui/widgets/logoWidget.dart';
import 'package:oscare/ui/widgets/myButton.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(LoginWidget());
  });
}

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginContainer(),
    );
  }
}

class LoginContainer extends StatefulWidget {
  @override
  _LoginContainerState createState() {
    return _LoginContainerState();
  }
}

class _LoginContainerState extends State<LoginContainer> {
  bool rememberMeIsChecked = false;
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* RU____ resizeToAvoidBottomPadding значение false, так как это позже приведет к
       некоторому беспорядку с полями ввода, когда клавиатура преодолеет их.
         EN____  resizeToAvoidBottomPadding to false cause it will make some mess later
       with the input fields when the keyboard gets over them.*/
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 130.0),
                LogoWidget(width: 130, height: 130),
                SizedBox(height: 100.0),
                Container(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          EmailInput(mEmail: _email),
                          SizedBox(height: 8.0),
                          PasswordInput(mPassword: _password),
                          SizedBox(height: 30.0),
                        ],
                      ),
                    ),
                  ),
                ),
                MyButton(
                    mFormKey: _formKey,
                    mColor: Colors.pinkAccent,
                    mText: "Login",
                    mWidth: double.infinity),
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
                )
              ]),
        ),
      ),
    );
  }
}
