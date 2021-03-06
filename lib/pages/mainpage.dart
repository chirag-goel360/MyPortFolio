import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/body_main.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: buildAppBar(
          context,
        ),
        drawer: buildDrawer(
          context,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return buildBody(
              context,
              constraints,
            );
          },
        ),
      ),
    );
  }
}
