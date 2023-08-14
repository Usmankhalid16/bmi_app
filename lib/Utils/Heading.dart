
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  final double? size;
  final FontWeight? weight;
  final String text;
  final Color? color;
  final double? spacing;

  const HeadingText({
    this.size,
    this.weight,
    required this.text,
    this.color,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.varelaRound(
        fontSize: size,
        fontWeight: weight,
        color: color ?? Colors.black,
        letterSpacing: spacing,
      ),
    );
  }
}
