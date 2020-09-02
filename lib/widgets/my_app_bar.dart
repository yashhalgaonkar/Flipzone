import 'package:flutter/material.dart';
import 'package:flip_zone/flipzone.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.dark,
      backgroundColor: Flipzone.black,
      title: Text(
        'Flipzone',
        style: Flipzone.kTitleTextStyle,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 28.0,
          ),
        )
      ],
    );
  }
}
