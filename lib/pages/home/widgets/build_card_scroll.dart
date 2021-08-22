import 'package:fllutter_lampproduct/models/LampModel.dart';
import 'package:fllutter_lampproduct/pages/detail/detail_page.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/card_item.dart';
import 'package:flutter/material.dart';

class BuildCardScroll extends StatelessWidget {
  const BuildCardScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ...List.generate(
              lamps.length,
              (index) => CardItem(
                  title: lamps[index].title,
                  imageResource: lamps[index].imageResource,
                  description: lamps[index].description,
                  ratings: lamps[index].ratings,
                  price: lamps[index].price,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 300),
                            reverseTransitionDuration:
                                const Duration(milliseconds: 500),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    FadeTransition(
                                        child: DetailPage(
                                          lampProducts: lamps[index],
                                        ),
                                        opacity: animation)));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
