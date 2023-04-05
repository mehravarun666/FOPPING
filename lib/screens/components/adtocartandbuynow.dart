import 'package:flutter/material.dart';

import '../../models/products.dart';

class addtocartandbuynow extends StatelessWidget {
  const addtocartandbuynow({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: product.color)),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets\icons\add-to-cart.png")),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: product.color,
                    textStyle: const TextStyle(
                      fontSize: 24,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
