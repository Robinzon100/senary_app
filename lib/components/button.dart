import 'package:flutter/material.dart';
import 'package:senary_app/constants/colors.dart';

class PrimaryButton extends StatefulWidget {
  final onPress;
  final bool filled;
  const PrimaryButton(
      {Key? key, required this.title, this.onPress, this.filled = true})
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
        onTap: () => widget.onPress(),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          height: 64,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  color: widget.filled ? Colors.white : IdepColors.cyan,
                ),
              ),
            ],
          ),
          decoration: widget.filled
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(0, 179, 229, 0.6000000238418579),
                        offset: Offset(0, 17),
                        blurRadius: 25)
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment(1, .5),
                      end: Alignment(1, 2),
                      colors: [
                        Color.fromRGBO(0, 209, 234, 1),
                        Color.fromRGBO(0, 98, 213, 1)
                      ]),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.cyan,
                    width: 2,
                  ),
                ),
        ),
      ),
    );
  }
}
