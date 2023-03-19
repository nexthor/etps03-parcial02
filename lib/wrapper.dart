import 'package:etps3_parcial2_2556012018/pages/account.dart';
import 'package:etps3_parcial2_2556012018/pages/groceries.dart';
import 'package:etps3_parcial2_2556012018/pages/plans.dart';
import 'package:etps3_parcial2_2556012018/pages/recipes.dart';
import 'package:etps3_parcial2_2556012018/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _getBody(),
        bottomNavigationBar: _getFooter(),
      ),
    );
  }

  Widget _getBody() {
    return IndexedStack(
      index: currentIndex,
      children: const [
        Recipes(),
        Plans(),
        Groceries(),
        Account(),
      ],
    );
  }

  Widget _getFooter() {
    List icons = [
      FontAwesomeIcons.spoon,
      FontAwesomeIcons.list,
      FontAwesomeIcons.cartShopping,
      FontAwesomeIcons.circleUser
    ];

    List texts = ["Recipes", "Plans", "Groceries", "Account"];

    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(texts.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        icons[index],
                        color: currentIndex == index
                            ? primary
                            : bgColor.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(texts[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: currentIndex == index
                                  ? primary
                                  : bgColor.withOpacity(0.5))),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
