import 'package:etps3_parcial2_2556012018/data/json.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[300]),
      child: ListView(
        children: [
          Column(
            children: List.generate(
                food_data.length,
                (index) => Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)),
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 10,
                      ),
                      child: Row(children: [
                        Image.network(
                          food_data[index]["src"]["tiny"],
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                food_data[index]["photographer"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                food_data[index]["alt"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )),
          ),
        ],
      ),
    );
  }
}
