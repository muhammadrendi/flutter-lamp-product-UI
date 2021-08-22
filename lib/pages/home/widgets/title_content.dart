import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleContent extends StatelessWidget {
  const TitleContent({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: GoogleFonts.getFont('Poppins',
                color: colorPrimary, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            "View All",
            style: GoogleFonts.getFont('Poppins',
                color: colorPrimary, fontSize: 16),
          )
        ],
      ),
    );
  }
}
