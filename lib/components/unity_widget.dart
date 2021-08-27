import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityCustomWidget extends StatefulWidget {
  const UnityCustomWidget({Key? key}) : super(key: key);

  @override
  _UnityCustomWidgetState createState() => _UnityCustomWidgetState();
}

class _UnityCustomWidgetState extends State<UnityCustomWidget> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  late UnityWidgetController _unityWidgetController;

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.yellow,
          child: UnityWidget(
            onUnityCreated: onUnityCreated,
          ),
        ),
      ),
    );
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
