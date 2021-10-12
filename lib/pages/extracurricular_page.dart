import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/body_extracurricular.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class ExtraCurricularPage extends StatefulWidget {
  @override
  _ExtraCurricularPageState createState() => _ExtraCurricularPageState();
}

class _ExtraCurricularPageState extends State<ExtraCurricularPage> {
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
            return buildBodyExtra(
              context,
              constraints,
            );
          },
        ),
      ),
    );
  }
}
