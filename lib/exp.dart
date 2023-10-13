import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Exp extends StatelessWidget {
  final String text1;
  final String text2;

  const Exp({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: <Widget>[
            Text(
              text1,
              style: GoogleFonts.roboto(
                color: Colors.grey,
              ),
            ),
            Text(
              text2,
              style: GoogleFonts.roboto(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
