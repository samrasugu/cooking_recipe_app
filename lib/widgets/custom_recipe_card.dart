import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomRecipeCard extends StatelessWidget {
  const CustomRecipeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.level,
    required this.rating,
  });

  final String imagePath;
  final String title;
  final String time;
  final String level;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1 / 2,
      height: 300,
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 1 / 2,
                  padding: const EdgeInsets.all(
                    15.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.35),
                  ),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            time,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            ' | ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            level,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
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
                      Text(
                        rating,
                        style: const TextStyle(
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
    );
  }
}
