import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/screens/desktop/desktop_certification.dart';
import 'package:my_portfolio/screens/mobile/mobile_certification.dart';
import 'package:my_portfolio/screens/tablet/tablet_certification.dart';

Widget buildBodyCertification(
    BuildContext context, BoxConstraints constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: constraints.maxWidth,
        minHeight: constraints.maxHeight,
      ),
      child: Responsive(
        desktop: buildDesktopCertification(
          context,
        ),
        tablet: buildTabletCertification(
          context,
        ),
        mobile: buildMobileCertification(
          context,
        ),
      ),
    ),
  );
}
