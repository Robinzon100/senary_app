import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  String placeholder;
  final isFocused;

  TextInput({Key? key, this.placeholder = '', this.isFocused})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 40,
      child: Focus(
          child: TextField(
            decoration: InputDecoration(
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onFocusChange: (hasFocus) {
            widget.isFocused(hasFocus);
          }),
    );
  }
}
