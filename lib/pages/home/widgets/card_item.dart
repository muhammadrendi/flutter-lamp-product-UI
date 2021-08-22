import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    this.title,
    this.imageResource,
    this.description,
    this.ratings,
    this.price,
    this.onTap,
  }) : super(key: key);

  final String? title, imageResource, description, ratings;
  final double? price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 20),
        child: Row(
          children: [
            Container(
              width: 166,
              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Container(
                      width: 150,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                              image: AssetImage(imageResource!))),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title!,
                          style: GoogleFonts.getFont('Poppins',
                              color: colorPrimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        Text(
                          '\$' + price.toString(),
                          style: GoogleFonts.getFont('Poppins',
                              color: colorPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Row(
                      children: [
                        CircleButton(
                          icon: 'assets/images/like.svg',
                          onTap: () {},
                        ),
                        CircleButton(
                          icon: 'assets/images/cart.svg',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              ratings!,
                              style: GoogleFonts.getFont("Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final String? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: colorPrimary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(icon!),
          ),
        ),
      ),
    );
  }
}
