import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final onPress;
  const PrimaryButton({Key? key, required this.title, this.onPress})
      : super(key: key);
  final String title;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}



class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => {widget.onPress()},
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 66,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 179, 229, 0.6000000238418579),
                  offset: Offset(0, 17),
                  blurRadius: 21)
            ],
            gradient: const LinearGradient(
                begin: Alignment(1, 0),
                end: Alignment(1, 2),
                colors: [
                  Color.fromRGBO(0, 209, 234, 1),
                  Color.fromRGBO(0, 98, 213, 1)
                ]),
          ),
        ),
      ),
    );
  }
}
