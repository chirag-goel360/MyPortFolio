import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/common_contactme.dart';

Widget buildMobileContactMe(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: buildContactMeContent(
              context,
            ),
          ),
        ),
      ],
    ),
  );
}
