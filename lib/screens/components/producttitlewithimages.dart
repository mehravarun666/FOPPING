import 'package:flutter/material.dart';

import '../../models/products.dart';

class Producttitlewithimages extends StatelessWidget {
  const Producttitlewithimages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 7.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Powered by VArun ",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Prices are starting at\n"),
                  TextSpan(
                      text: "₹${product.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                                  product.image,
                                  fit: BoxFit.fill,
                                ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
