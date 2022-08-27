import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopflutter/constant.dart';
import 'package:shopflutter/screens/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: (){

          },
      ),
      actions: <Widget>[IconButton(onPressed: null,
          icon: SvgPicture.asset(
              "assets/icons/search.svg",
            color: kTextColor,
          ),
      ),
        IconButton(onPressed: null,
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
        ),
        SizedBox(
          width:kDefaultPaddin /2 ,
        )
      ],
    );
  }
}
