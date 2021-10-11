import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/appbar.dart';
import 'package:my_portfolio/widgets/body_certification.dart';
import 'package:my_portfolio/widgets/drawer.dart';

class CertificationPage extends StatefulWidget {
  @override
  _CertificationPageState createState() => _CertificationPageState();
}

class _CertificationPageState extends State<CertificationPage> {
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
            return buildBodyCertification(
              context,
              constraints,
            );
          },
        ),
      ),
    );
  }
}
