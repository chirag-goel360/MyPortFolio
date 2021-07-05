import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/pages/mainpage.dart';
import 'package:my_portfolio/pages/project_page.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(
    title: buildTitle(),
    backgroundColor: Colors.teal.shade200,
    actions: !Responsive.isMobile(context) ? buildButtons(context) : null,
  );
}

Widget buildTitle() {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      children: [
        TextSpan(
          text: 'Port',
          style: TextStyle(
            fontFamily: 'Christian_Heedlay',
            color: Color(0xFFFFBD9B),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        TextSpan(
          text: 'Folio',
          style: TextStyle(
            fontFamily: 'Christian_Heedlay',
            color: Color(0xFFFFC947),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ],
    ),
  );
}

List<Widget> buildButtons(context) {
  return <Widget>[
    MaterialButton(
      child: Text(
        'Home',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Colors.blueAccent,
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      },
    ),
    MaterialButton(
      child: Text(
        'Projects',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          color: Color(0xFF45405B),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProjectsPage();
            },
          ),
        );
      },
    ),
    MaterialButton(
      child: Text(
        'Contact',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Color(0xFF45405B),
        ),
      ),
      onPressed: () {},
    ),
  ];
}
