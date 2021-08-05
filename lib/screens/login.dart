import 'package:flutter/material.dart';

import 'package:senary_app/components/button.dart';
import 'package:senary_app/components/text_input.dart';
import 'package:senary_app/components/video.dart';
// import 'package:senary_app/components/video.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  LoginScreenViewState createState() => LoginScreenViewState();
}

class LoginScreenViewState extends State<LoginScreenView> {
  var text = "some text 1";

  void pressHandler() {
    print('clicked');
    setState(() {
      text = "some other text";
    });
  }

  List<String> questions = [
    'button 1',
    'button 2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          VideoPlayerScreen(
            videoUrl: 'assets/videos/login.mp4',
          ),
          Column(
              // padding: EdgeInsets.top(12),
              children: <Widget>[
                TextInput(
                    placeholder: 'email',
                    isFocused: (isFocused) => print(isFocused)),
                TextInput(
                    placeholder: 'password',
                    isFocused: (isFocused) => print(isFocused)),
              ]),
          Column(
            children: <Widget> [
              PrimaryButton(title: 'login', onPress: pressHandler),
            ],
          ),
        ],
      ),
    );
  }
}
