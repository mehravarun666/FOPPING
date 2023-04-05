import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappbar(),
      body: body(),
    );
  }

  AppBar buildappbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/back.svg")),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.black,)),
            IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.black,)),
            SizedBox(width: 10,)
      ],
    );
  }
}
