import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/screens/desktop/desktop_main.dart';
import 'package:my_portfolio/screens/mobile/mobile_main.dart';
import 'package:my_portfolio/screens/tablet/tablet_main.dart';

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
