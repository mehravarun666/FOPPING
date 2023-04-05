import 'package:flutter/material.dart';

import '../../models/products.dart';
import '../details/detail_screen.dart';
import 'Itemcard.dart';
import 'categories.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            "Accessories",
            style: TextStyle(fontSize: 25.0, color: Colors.black),
          ),
        ),
        Categories(),
        Expanded(
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75),
            itemBuilder: (context, index) => Itemcard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]))),
            ),
          ),
        ),
      ],
    );
  }
}
