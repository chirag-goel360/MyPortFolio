import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/body_projects.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: buildAppBar(
          context,
        ),
        drawer: buildDrawer(
          context,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return buildBodyProjects(
              context,
              constraints,
            );
          },
        ),
      ),
    );
  }
}
