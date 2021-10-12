import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/screens/desktop/desktop_extra.dart';
import 'package:my_portfolio/screens/mobile/mobile_extra.dart';
import 'package:my_portfolio/screens/tablet/tablet_extra.dart';

Widget buildBodyExtra(BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        minHeight: constraints.maxHeight,
      ),
      child: Responsive(
        desktop: buildDesktopExtra(
          context,
        ),
        tablet: buildTabletExtra(
          context,
        ),
        mobile: buildMobileExtra(
          context,
        ),
      ),
    ),
  );
}
