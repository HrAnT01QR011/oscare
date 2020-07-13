import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oscare/ui/screens/registerDevice/widget/deviceNameInput.dart';
import 'package:oscare/ui/widgets/logoWidget.dart';
import 'package:oscare/ui/widgets/myButton.dart';

void main() {
  /*  RU_____ Это необходимо только для первого использования
    Если вы работаете с приложением и вам нужно получить доступ к бинарному мессенджеру до того,
    как будет вызвана функция `runApp ()` (например, во время инициализации плагина),
    то вам сначала нужно явно вызвать `WidgetsFlutterBinding.ensureInitialized ()`.
      EN_____ This is for first use only.
    If you are working with the application and you need to access the binary messenger before
    how the `runApp ()` function will be called (for example, during plugin initialization),
    then you first need to explicitly call `WidgetsFlutterBinding.ensureInitialized ()`*/
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(RegisterDeviceWidget());
  });
}

class RegisterDeviceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Device',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RegisterDeviceContainer(),
    );
  }
}

class RegisterDeviceContainer extends StatefulWidget {
  @override
  _RegisterDeviceContainerState createState() {
    return _RegisterDeviceContainerState();
  }
}

class _RegisterDeviceContainerState extends State<RegisterDeviceContainer> {
  final _formKey = GlobalKey<FormState>();
  String _deviceName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 130.0),
              LogoWidget(width: 130, height: 130),
              SizedBox(height: 130.0),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      DeviceNameInput(mDeviceName: _deviceName),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150.0),
              MyButton(
                  mFormKey: _formKey,
                  mColor: Colors.pinkAccent,
                  mText: "Validate",
                  mWidth: double.infinity),
            ],
          ),
        ),
      ),
    );
  }
}
