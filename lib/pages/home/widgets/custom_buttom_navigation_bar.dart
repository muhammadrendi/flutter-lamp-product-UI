import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int indexSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colorPrimary),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              itemNavigationBar(
                "assets/images/home.svg",
                1,
              ),
              itemNavigationBar(
                "assets/images/like.svg",
                2,
              ),
              itemNavigationBar(
                "assets/images/cart.svg",
                3,
              ),
              itemNavigationBar(
                "assets/images/profile.svg",
                4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconButton itemNavigationBar(String? icon, int? index) {
    return IconButton(
        onPressed: () {
          setState(() {
            indexSelected = index!;
          });
        },
        icon: Column(
          children: [
            SvgPicture.asset(
              icon!,
              color: indexSelected == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.50),
            ),
          ],
        ));
  }
}
