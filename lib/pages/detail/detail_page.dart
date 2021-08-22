import 'package:fllutter_lampproduct/animation/FadeAnimation.dart';
import 'package:fllutter_lampproduct/models/LampModel.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/card_item.dart';
import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.lampProducts}) : super(key: key);

  final Lamp lampProducts;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool fullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            FadeAnimation(
                beginTranslateY: 50.0,
                delay: 1,
                child: ImageDetail(widget: widget)),
            Positioned(
              bottom: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 5, left: 20, right: 20, top: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimation(
                        beginTranslateY: 50.0,
                        delay: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.lampProducts.title!,
                                  style: GoogleFonts.getFont('Poppins',
                                      color: colorPrimary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                CircleButton(
                                  icon: 'assets/images/like.svg',
                                  onTap: () {},
                                ),
                              ],
                            ),
                            Text(
                              '\$' + widget.lampProducts.price.toString(),
                              style: GoogleFonts.getFont('Poppins',
                                  color: colorPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      FadeAnimation(
                        beginTranslateY: 50.0,
                        delay: 2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                height: fullDescription ? 170 : 20,
                                curve: Curves.ease,
                                child: SingleChildScrollView(
                                  child: RichText(
                                    text: TextSpan(
                                        text: widget.lampProducts.description,
                                        style: GoogleFonts.getFont('Poppins',
                                            color:
                                                Colors.black.withOpacity(0.70),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 16)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (!fullDescription) {
                                    fullDescription = true;
                                  } else {
                                    fullDescription = false;
                                  }
                                });
                              },
                              child: Text(
                                "RAED MORE >",
                                style: GoogleFonts.getFont('Poppins',
                                    color: colorPrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      FadeAnimation(
                          delay: 3, child: GroupButton(), beginTranslateY: 50.0)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: FadeAnimation(
                  delay: 1.5,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorPrimaryLight,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_left,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                  beginTranslateY: 50.0),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetail extends StatelessWidget {
  const ImageDetail({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DetailPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 600,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                widget.lampProducts.imageResource!,
              ))),
    );
  }
}

class GroupButton extends StatelessWidget {
  const GroupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56,
          width: 150,
          decoration: BoxDecoration(
              color: colorPrimary, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: colorPrimaryLight,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "1",
                    style: GoogleFonts.getFont('Poppins',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: colorPrimaryLight,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        InkWell(
          onTap: () {},
          child: Container(
            height: 56,
            width: 180,
            decoration: BoxDecoration(
                color: colorPrimary, borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add To Cart",
                      style: GoogleFonts.getFont('Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: colorPrimaryLight,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset("assets/images/cart.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
