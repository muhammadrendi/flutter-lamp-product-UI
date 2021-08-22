import 'package:fllutter_lampproduct/animation/FadeAnimation.dart';
import 'package:fllutter_lampproduct/models/LampModel.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/build_card_scroll.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/custom_buttom_navigation_bar.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/header.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/search_widget.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/title_content.dart';
import 'package:fllutter_lampproduct/pages/home/widgets/top_products.dart';
import 'package:fllutter_lampproduct/utilities/constants.dart';
import 'package:flutter/material.dart';

int indexSelected = 1;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSecondary,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 25),
              FadeAnimation(
                delay: 1,
                child: Header(),
                beginTranslateY: 50.0,
              ),
              FadeAnimation(
                  delay: 2, child: SearchWidget(), beginTranslateY: 50.0),
              FadeAnimation(
                  delay: 3, child: BuildCardScroll(), beginTranslateY: 50.0),
              FadeAnimation(
                  delay: 4,
                  child: Column(
                    children: [
                      TitleContent(
                        title: "Top Products",
                      ),
                      ...List.generate(
                          5,
                          (index) => TopProducts(
                                image: topProducts[index].imageResource,
                                title: topProducts[index].title,
                                price: topProducts[index].price,
                              ))
                    ],
                  ),
                  beginTranslateY: 50.0)
            ]),
          ),
        ],
      ),
      bottomNavigationBar: FadeAnimation(
          delay: 5, child: CustomBottomNavigationBar(), beginTranslateY: 50.0),
    );
  }
}
