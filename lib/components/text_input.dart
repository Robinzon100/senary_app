import 'package:flutter/material.dart';
import 'package:senary_app/constants/colors.dart';

class TextInput extends StatefulWidget {
  String placeholder;
  final isFocused;
  bool isPassword;

  TextInput(
      {Key? key,
      this.placeholder = '',
      this.isFocused,
      this.isPassword = false})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
              offset: Offset(0, 9),
              blurRadius: 23),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.10000000149011612),
            spreadRadius: -12.0,
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Focus(
          child: TextField(
            obscureText: widget.isPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: IdepColors.cyan,
                ),
              ),
              hoverColor: IdepColors.lightDark,
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          onFocusChange: (hasFocus) {
            if (widget.isFocused != null && hasFocus) {
              widget.isFocused(true);
            }
          }),
    );
  }
}
