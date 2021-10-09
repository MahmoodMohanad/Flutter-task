import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxHeadline extends StatelessWidget {
  const BoxHeadline({
    Key? key,
    required this.firstLine,
    required this.secondLine,
  }) : super(key: key);

  final String firstLine;
  final String secondLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstLine,
            style: GoogleFonts.notoSans(fontSize: 18, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
          Text(secondLine,
              style: GoogleFonts.notoSans(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
