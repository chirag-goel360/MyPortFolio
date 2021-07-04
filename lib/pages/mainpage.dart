import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/body.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(
        247,
        248,
        250,
        1,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 10 : 140,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(context),
          drawer: buildDrawer(context),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return buildBody(
                context,
                constraints,
              );
            },
          ),
        ),
      ),
    );
  }
}
