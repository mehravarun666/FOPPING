import 'package:flutter/material.dart';

import '../screens/components/adtocartandbuynow.dart';
import '../screens/components/colorandsize.dart';
import '../screens/components/counterwithsvgs.dart';
import '../screens/components/description.dart';
import '../screens/components/producttitlewithimages.dart';
import 'products.dart';

class secondScreen extends StatelessWidget {
  final Product product;

  const secondScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 25.0, right: 15.0),
                  height: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: <Widget>[
                      colorandsize(product: product),
                      description(product: product),
                      counterwithsvgs(),
                      SizedBox(height: 10),
                      addtocartandbuynow(product: product),
                    ],
                  ),
                ),
                Producttitlewithimages(product: product),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}


// _buttonPreview(double _height, double _width) {
//   final ButtonStyle flatButtonStyle = TextButton.styleFrom(
//     minimumSize: Size(_width, _height),
//     backgroundColor: Colors.grey,
//     padding: EdgeInsets.all(0),
//   );
// }
