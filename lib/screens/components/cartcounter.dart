import 'package:flutter/material.dart';

class cartcounter extends StatefulWidget {
  const cartcounter({super.key});

  @override
  State<cartcounter> createState() => _cartcounterState();
}

class _cartcounterState extends State<cartcounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildoutlinebutton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6),
        ),
        buildoutlinebutton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            })
      ],
    );
  }

  SizedBox buildoutlinebutton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40.0,
      height: 32.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)))),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
