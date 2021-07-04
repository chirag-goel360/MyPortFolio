import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/commons.dart';

Widget buildTablet(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: buildContent(context),
              ),
            ],
          ),
        ),
        buildBottomBar(context),
      ],
    ),
  );
}
