import 'package:cached_network_image/cached_network_image.dart';
import 'package:flip_zone/flipzone.dart';
import 'package:flip_zone/models/product.dart';
import 'package:flutter/material.dart';

class MyHistory extends StatelessWidget {
  final List<Product> productList;

  const MyHistory({
    Key key,
    @required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured',
            style: Flipzone.kTitleTextStyle.copyWith(color: Flipzone.black),
          ),
          const SizedBox(height: 4.0),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                final Product product = productList[index];

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
  final Product product;
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
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: CachedNetworkImage(
                imageUrl: product.imageUrl,
                fit: BoxFit.cover,
                width: 150.0,
                height: 175.0,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            product.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(product.price.toString())
        ],
      ),
    );
  }
}
