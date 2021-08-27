import 'package:flutter/material.dart';
import 'package:senary_app/screens/login.dart';

void main() => runApp(const SenaryApp());

class SenaryApp extends StatelessWidget {
  const SenaryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreenView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
