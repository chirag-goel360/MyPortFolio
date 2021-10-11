import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/screens/desktop_contactme.dart';
import 'package:my_portfolio/screens/mobile_contactme.dart';
import 'package:my_portfolio/screens/tablet_contactme.dart';

Widget buildBodyContactMe(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        minHeight: constraints.maxHeight,
      ),
      child: Responsive(
        desktop: buildDesktopContactMe(
          context,
        ),
        tablet: buildTabletContactMe(
          context,
        ),
        mobile: buildMobileContactMe(
          context,
        ),
      ),
    ),
  );
}
