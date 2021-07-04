import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/responsive.dart';

Widget buildAppBar(BuildContext context) {
  return AppBar(
    title: buildTitle(),
    backgroundColor: Colors.teal.shade50,
    actions: !Responsive.isMobile(context) ? buildButtons() : null,
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
            color: Color.fromRGBO(
              69,
              64,
              91,
              1,
            ),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        TextSpan(
          text: 'Folio',
          style: TextStyle(
            fontFamily: 'Christian_Heedlay',
            color: Color.fromRGBO(
              80,
              175,
              192,
              1,
            ),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ],
    ),
  );
}

List<Widget> buildButtons() {
  return <Widget>[
    MaterialButton(
      child: Text(
        'Home',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Color.fromRGBO(
            80,
            175,
            192,
            1,
          ),
        ),
      ),
      onPressed: () {},
    ),
    MaterialButton(
      child: Text(
        'Projects',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(
            69,
            64,
            91,
            1,
          ),
        ),
      ),
      onPressed: () {},
    ),
    MaterialButton(
      child: Text(
        'Contact',
        style: TextStyle(
          fontFamily: 'Christian_Heedlay',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Color.fromRGBO(
            69,
            64,
            91,
            1,
          ),
        ),
      ),
      onPressed: () {},
    ),
  ];
}
