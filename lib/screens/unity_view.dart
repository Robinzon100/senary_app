import 'package:flutter/material.dart';
import 'package:senary_app/components/unity_widget.dart';

class UnityView extends StatefulWidget {
  const UnityView({Key? key}) : super(key: key);

  @override
  UnityViewState createState() => UnityViewState();
}

class UnityViewState extends State<UnityView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      // body: UnityCustomWidget(),
    );
  }
}
