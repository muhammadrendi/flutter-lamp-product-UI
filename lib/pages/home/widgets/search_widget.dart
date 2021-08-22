import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        style: GoogleFonts.getFont('Poppins',
            fontWeight: FontWeight.w500, fontSize: 16),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide:
                    BorderSide(color: Colors.white, style: BorderStyle.solid)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide:
                    BorderSide(color: Colors.white, style: BorderStyle.solid)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                borderSide:
                    BorderSide(color: Colors.white, style: BorderStyle.solid)),
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(right: 15),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset('assets/images/filter.svg'),
                ),
              ),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.only(left: 15),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset('assets/images/search.svg'),
              ),
            ),
            hintText: "Search lamp",
            hintStyle: GoogleFonts.getFont('Poppins',
                color: colorPrimary.withOpacity(0.50),
                fontWeight: FontWeight.w400,
                fontSize: 18)),
      ),
    );
  }
}
