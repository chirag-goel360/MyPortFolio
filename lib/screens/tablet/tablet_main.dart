import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/commons_main.dart';

Widget buildTablet(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: buildContent(
                    context,
                  ),
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
