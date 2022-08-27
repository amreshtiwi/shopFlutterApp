import 'package:flutter/material.dart';
import 'package:shopflutter/constant.dart';
import 'package:shopflutter/models/Product.dart';
import 'package:shopflutter/screens/details/details_screen.dart';
import 'package:shopflutter/screens/home/component/categorries.dart';
import 'package:shopflutter/screens/home/component/item_card.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Woman",
              style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight : FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/4),
              child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                            product: products[index]))),
              )),
            ) )
        ,


      ],
    );
  }
}





