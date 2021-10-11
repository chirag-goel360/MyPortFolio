import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class ContactMePage extends StatefulWidget {
  @override
  _ContactMePageState createState() => _ContactMePageState();
}

class _ContactMePageState extends State<ContactMePage> {
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
            return Container();
          },
        ),
      ),
    );
  }
}
