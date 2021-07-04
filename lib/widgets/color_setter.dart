import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double textfont;
  final TextAlign textalign;
  final FontWeight weight;
  final Gradient gradient;
  GradientText(
    this.text, {
    @required this.gradient,
    @required this.textfont,
    this.textalign,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        ),
      ),
      child: Text(
        text,
        textAlign: textalign,
        style: TextStyle(
          color: Colors.white,
          fontSize: textfont,
          fontWeight: weight,
        ),
      ),
    );
  }
}
