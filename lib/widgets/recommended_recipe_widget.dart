import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RecommendedRecipeWidget extends StatelessWidget {
  const RecommendedRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        side: BorderSide(
          color: Colors.transparent,
          width: 2,
        ),
      ),
      elevation: 4.0,
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 160,
              width: 140,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(friesImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -5,
                    right: 16,
                    child: Icon(
                      Icons.bookmark_outlined,
                      size: 35,
                      color: Colors.orange.withOpacity(.9),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 16,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(
                          height: 30,
                          width: 70,
                          padding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 5.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.35),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange.withOpacity(.9),
                              ),
                              const Text(
                                '5.0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Muffins with cocoa cream',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'By Emma Olivia',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time_filled_rounded,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '20 Min',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '\u{1F604}',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'EASY',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
