import 'package:flutter/material.dart';

import 'package:senary_app/components/button.dart';
import 'package:senary_app/components/video.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  LoginScreenViewState createState() => LoginScreenViewState();
}

class LoginScreenViewState extends State<LoginScreenView> {
  var text = "some text 1";

  void pressHandler() {
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
        children: <Widget>[
          const VideoPlayerScreen(videoUrl: 'assets/videos/login.mp4',),
          Text(text),
          OutlinedButton(
            onPressed: pressHandler,
            child: const Text('some new new button'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
          ),
          PrimaryButton(title: 'login', onPress: pressHandler),
        ],
      ),
    );
  }
}
