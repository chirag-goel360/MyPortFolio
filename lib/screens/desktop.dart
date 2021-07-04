import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/commons.dart';

Widget buildDesktop(BuildContext context) {
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
                flex: 3,
                child: buildContent(context),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/programmer.gif',
                  height: 480,
                ),
              ),
            ],
          ),
        ),
        buildBottomBar(context),
      ],
    ),
  );
}
