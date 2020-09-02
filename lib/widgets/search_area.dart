import 'package:flip_zone/flipzone.dart';
import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0.0),
        height: 120.0,
        decoration: BoxDecoration(
          color: Flipzone.black,
          //color: Colors.red,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0)),
        ),
        child: TextField(
          decoration: Flipzone.kTextInputFieldDecoration,
          autocorrect: true,
          keyboardType: TextInputType.text,
          textDirection: TextDirection.ltr,
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}
