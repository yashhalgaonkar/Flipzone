import 'package:flip_zone/flipzone.dart';
import 'package:flip_zone/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Flipzone.black,
    elevation: 0.0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 30.0,
        ),
      )
    ],
    title: Text(
      'Flipzone',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
    ),
  );
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MyAppBar(),
        SearchArea(),
      ],
    );
  }
}

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
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.2,
        ),
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

class SearchArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          color: Flipzone.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0)),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextField(
              decoration: Flipzone.kTextInputFieldDecoration,
              autocorrect: true,
              keyboardType: TextInputType.text,
              textDirection: TextDirection.ltr,
              cursorColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
