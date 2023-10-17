import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:cooking_recipe_app/value_objects/dummy_data.dart';
import 'package:flutter/material.dart';

class RecipeDetailsScreen extends StatelessWidget {
  const RecipeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white,
          weight: 60.0,
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Icon(
              Icons.bookmark_outlined,
              color: Colors.orange.withOpacity(.9),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1 / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(friesImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          scroll()
        ],
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Stuffed Chicken',
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.withOpacity(.3),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.alarm_rounded,
                            size: 50,
                            color: Colors.green.withOpacity(.9),
                            weight: 60.0,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '40 MIN',
                            style: TextStyle(
                              color: Colors.green.withOpacity(.9),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange.withOpacity(.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.alarm_rounded,
                            size: 50,
                            color: Colors.orange.withOpacity(.9),
                            weight: 60.0,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'MEDIUM',
                            style: TextStyle(
                              color: Colors.orange.withOpacity(.9),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.withOpacity(.2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.fastfood_outlined,
                            size: 50,
                            color: Colors.blue.withOpacity(.5),
                            weight: 60.0,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '300\n cal/serving',
                            style: TextStyle(
                              color: Colors.blue.withOpacity(.9),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Ingredients :',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ListView.builder(
                  itemCount: ingredients.length,
                  shrinkWrap: true,
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  itemBuilder: (context, index) {
                    final ingredient = ingredients[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 15,
                            color: Colors.orange.withOpacity(.8),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              ingredient['ingred'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Directions :',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ListView.builder(
                  itemCount: directions.length,
                  shrinkWrap: true,
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  itemBuilder: (context, index) {
                    final direction = directions[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            direction['number'].toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              direction['step'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
