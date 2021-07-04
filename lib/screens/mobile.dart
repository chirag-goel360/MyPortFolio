import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/commons.dart';

Widget buildMobile(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: buildContent(context),
        ),
        Divider(),
        buildCopyRight(context),
        SizedBox(
          height: 12,
        ),
        buildIcons(),
        SizedBox(
          height: 12,
        ),
      ],
    ),
  );
}
