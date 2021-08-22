import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({
    Key? key,
    this.image,
    this.title,
    this.price,
  }) : super(key: key);

  final String? image, title;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 75,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 7,
                child: Container(
                  width: 74,
                  height: 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image!), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.getFont('Poppins',
                          color: colorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      "\$" + price.toString(),
                      style: GoogleFonts.getFont('Poppins',
                          color: colorPrimary, fontSize: 12),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 15,
                child: Container(
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Text(
                        "+ Add",
                        style: GoogleFonts.getFont('Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
