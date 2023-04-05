import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> Categories = [
    "Phones",
    "Laptops",
    "Watches",
    "Gaming Consoles",
    "Cameras"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.length,
            itemBuilder: (context, index) => buildcategories(index)),
      ),
    );
  }

  Widget buildcategories(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Categories[index],
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? Colors.black : Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.0),
                height: 2.0,
                width: 50.0,
                color:
                    selectedIndex == index ? Colors.blue : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
