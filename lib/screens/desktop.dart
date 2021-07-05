import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/commons.dart';

Widget buildDesktop(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 40,
                    bottom: 40,
                  ),
                  child: buildContent(
                    context,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/programmer.gif',
                  height: 450,
                ),
              ),
            ],
          ),
        ),
        buildBottomBar(
          context,
        ),
      ],
    ),
  );
}
