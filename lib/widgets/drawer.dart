import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/widgets/appbar.dart';

Widget buildDrawer(BuildContext context) {
  return Responsive.isMobile(context)
      ? Drawer(
          child: ListView(
            padding: EdgeInsets.all(20),
            children: buildButtons(),
          ),
        )
      : null;
}
