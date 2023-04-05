import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cartcounter.dart';

class counterwithsvgs extends StatelessWidget {
  const counterwithsvgs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cartcounter(),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: SvgPicture.asset("assets\icons\heart.svg"),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: SvgPicture.asset("assets\icons\cart.svg"),
                ),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Colors.black,
                    )),
                child: SvgPicture.asset(
                  "assets\icons\back.svg",
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
