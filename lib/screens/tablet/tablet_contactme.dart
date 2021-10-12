import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/common_contactme.dart';

Widget buildTabletContactMe(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: buildContactMeContent(
              context,
            ),
          ),
        ),
      ],
    ),
  );
}
