import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopflutter/constant.dart';
import 'package:shopflutter/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key , required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),
      onPressed: () => Navigator.pop(context),),
      actions: [
        IconButton(onPressed: () {

        },
            icon: SvgPicture.asset("assets/icons/search.svg")
        ),
        IconButton(onPressed: () {

        },
            icon: SvgPicture.asset("assets/icons/cart.svg")
        ),
        SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}
