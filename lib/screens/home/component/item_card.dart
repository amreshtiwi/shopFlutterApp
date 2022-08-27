import 'package:flutter/material.dart';
import 'package:shopflutter/constant.dart';
import 'package:shopflutter/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final void Function() press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height: 170,
              // width: 150,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
            child: Text(product.title,
              style: TextStyle(
                  color: kTextLightColor
              ),
            ),
          ),
          Text("\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}