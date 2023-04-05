import 'package:flutter/material.dart';

import '../../models/products.dart';

class description extends StatelessWidget {
  const description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Text(
          product.description,
          style: TextStyle(fontSize: 15.0),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
