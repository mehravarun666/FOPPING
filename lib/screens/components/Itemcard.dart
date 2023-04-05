import 'package:flutter/material.dart';

import '../../models/products.dart';
import '../details/detail_screen.dart';

class Itemcard extends StatelessWidget {
  final Product product;
  final Function press;
  const Itemcard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(product: product))),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(product.title),
          ),
          Text(
            "₹${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
