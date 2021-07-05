import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/screens/desktop_projects.dart';
import 'package:my_portfolio/screens/mobile_projects.dart';
import 'package:my_portfolio/screens/tablet_projects.dart';

Widget buildBodyProjects(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        minHeight: constraints.maxHeight,
      ),
      child: Responsive(
        desktop: buildDesktopProjects(
          context,
        ),
        tablet: buildTabletProjects(
          context,
        ),
        mobile: buildMobileProjects(
          context,
        ),
      ),
    ),
  );
}
