import 'package:flutter/material.dart';
import 'package:senary_app/components/animated_widget.dart';

import 'package:senary_app/components/button.dart';
import 'package:senary_app/components/text_input.dart';
import 'package:senary_app/components/video.dart';
import 'package:senary_app/constants/colors.dart';
import 'package:senary_app/screens/animation_view.dart';
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // VideoPlayerScreen(
              //   videoUrl: 'assets/videos/login.mp4',
              // ),
              Column(
                  // padding: EdgeInsets.top(12),
                  children: <Widget>[
                    TextInput(placeholder: 'email'),
                    const SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextInput(placeholder: 'password', isPassword: true),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'forgot ?',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: IdepColors.cyan,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ]),
              Column(
                children: <Widget>[
                  PrimaryButton(title: 'login', onPress: pressHandler),
                  const SizedBox(height: 20),
                  PrimaryButton(
                      title: 'register',
                      filled: false,
                      onPress: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AnimationView()))
                          }),
                  const SizedBox(height: 30),
                ],
              ),
              // Column(
              //   children: const [
              //     SimpleAnimation(),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
