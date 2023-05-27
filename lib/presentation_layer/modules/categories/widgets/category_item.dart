import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color color;
  final String image;
  final String name;

  const CategoryItem({
    Key? key,
    required this.color,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Stack(
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Center(
            child: Image.asset(image, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
