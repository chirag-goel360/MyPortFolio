import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/common_certifications.dart';

Widget buildMobileCertification(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: buildCertificationContent(
              context,
            ),
          ),
        ),
      ],
    ),
  );
}
