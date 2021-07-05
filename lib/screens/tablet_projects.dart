import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/common_projects.dart';

Widget buildTabletProjects(BuildContext context) {
  return IntrinsicHeight(
    child: Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: buildProjectContent(
              context,
            ),
          ),
        ),
      ],
    ),
  );
}
