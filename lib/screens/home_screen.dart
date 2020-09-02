import 'package:flip_zone/flipzone.dart';
import 'package:flip_zone/models/data.dart';
import 'package:flip_zone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Flipzone.grey.withOpacity(0.9),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MyAppBar(),
        SearchArea(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          sliver: SliverToBoxAdapter(
            child: MyHistory(productList: getHistory),
          ),
        ),
      ],
    );
  }
}
