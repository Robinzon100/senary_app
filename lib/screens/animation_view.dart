import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senary_app/components/animated_widget.dart';

class AnimationView extends StatelessWidget {
  const AnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: PlayOneShotAnimation(),
    );
  }
}
