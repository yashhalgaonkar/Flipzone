import 'package:cached_network_image/cached_network_image.dart';
import 'package:flip_zone/flipzone.dart';
import 'package:flip_zone/models/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProductList extends StatelessWidget {
  final List<Types> productList;
  final String title;

  const MyProductList({
    Key key,
    @required this.title,
    @required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Flipzone.kTitleTextStyle.copyWith(color: Flipzone.black),
          ),
          const SizedBox(height: 4.0),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                final Types product = productList[index];

                return ProductTile(product: product, index: index);
              },
            ),
          )
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final Types product;
  final int index;

  const ProductTile({
    Key key,
    @required this.product,
    @required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == 0
          ? const EdgeInsets.fromLTRB(0.0, 6.0, 6.0, 6.0)
          : const EdgeInsets.all(6.0),
      width: 160.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                imageUrl: product.image,
                fit: BoxFit.cover,
                width: 160.0,
                height: 175.0,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Row(
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Icon(Icons.verified_rounded, color: Colors.green, size: 16.0)
                ],
              )),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text(
              "Price: Rs.2999/-",
              style: TextStyle(fontSize: 14.0),
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Row(
              children: [
                Text(
                  'In Stock',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
