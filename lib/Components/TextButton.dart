import 'package:flutter/material.dart';

class TextButtton extends StatelessWidget {
  final String? name;
  final ButtonStyle? style;
  final TextStyle? textStyle;
  final Function()? onpressed;
  const TextButtton(
      {Key? key, this.name, this.style, this.textStyle, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(name!.toUpperCase(), style: textStyle),
        style: style);
  }
}
