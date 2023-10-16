import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:flutter/material.dart';

class RecommendedRecipeWidget extends StatelessWidget {
  const RecommendedRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        side: BorderSide.none,
      ),
      elevation: 1.0,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide.none,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 150,
              width: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
                child: Image(
                  image: AssetImage(
                    friesImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
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
                  Text(
                    'By Emma Olivia',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('data'),
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

// ListTile(
//         shape: RoundedRectangleBorder(
//           side: BorderSide.none,
//         ),
//         leading: SizedBox(
//           // height: 150,
//           width: 120,
//           child: Image(
//             image: AssetImage(
//               friesImage,
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         tileColor: Colors.white,
//         horizontalTitleGap: 20.0,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Muffins with cocoa cream',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               'By Emma Olivia',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 Text('data'),
//               ],
//             )
//           ],
//         ),
//       ),
