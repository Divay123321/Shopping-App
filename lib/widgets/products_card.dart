import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String asset;
  final Color backgroundcolor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.asset,
    required this.backgroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundcolor,
      ),
      margin: EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Text('\$$price'),
          SizedBox(height: 5),
          Center(child: Image(image: AssetImage(asset), height: 300)),
        ],
      ),
    );
  }
}
