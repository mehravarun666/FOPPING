import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/products.dart';
import '../../models/secondScreen.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppbar(context),
      body: secondScreen(
        product: product,
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          )),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
            )),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
