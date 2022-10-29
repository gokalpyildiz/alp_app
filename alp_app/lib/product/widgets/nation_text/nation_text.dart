import 'package:flutter/material.dart';

class NationText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;

  const NationText(
    this.text, {
    Key? key,
    this.color,
    this.fontSize = 14.0,
    this.fontWeight,
    this.textAlign = TextAlign.left,
    this.overflow,
    this.maxLines,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '*null*',
      style: TextStyle(
        decoration: decoration,
        fontFamily: 'inter',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: true,
    );
  }
}
