import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/desktop.dart';
import 'package:my_portfolio/screens/mobile.dart';
import 'package:my_portfolio/screens/tablet.dart';
import 'package:my_portfolio/helpers/responsive.dart';

Widget buildBody(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        minHeight: constraints.maxHeight,
      ),
      child: Responsive(
        desktop: buildDesktop(
          context,
        ),
        tablet: buildTablet(
          context,
        ),
        mobile: buildMobile(
          context,
        ),
      ),
    ),
  );
}
