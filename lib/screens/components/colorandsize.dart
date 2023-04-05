import 'package:flutter/material.dart';

import '../../models/products.dart';

class colorandsize extends StatelessWidget {
  const colorandsize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Variants"),
              Row(
                children: [
                  colordot(
                    color: product.color,
                    isSelected: true,
                  ),
                  colordot(
                    color: Color(0xFFF8C078),
                  ),
                  colordot(
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black45),
              children: [
                TextSpan(text: "SIZE\n"),
                TextSpan(
                    text: "${product.size} CM",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colordot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15.0, right: 10.0),
        padding: EdgeInsets.all(2.4),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
