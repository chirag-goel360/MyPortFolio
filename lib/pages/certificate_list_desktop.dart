import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/helpers/certificate/certification_class.dart';
import 'package:my_portfolio/helpers/common_certifications.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could Not Launch URL';
  }
}

Widget certificateGrid(context, Certification certificate) {
  return InkWell(
    onTap: () {
      String url = certificate.link;
      _launchURL(url);
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: colors[Random().nextInt(colors.length)],
        ),
      ),
      height: 130,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.only(
              right: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 2,
                color: Colors.black54,
              ),
              image: DecorationImage(
                image: NetworkImage(
                  certificate.image,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  certificate.name,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Baby-Child',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.building,
                      color: Colors.teal,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      certificate.organization,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.calendar,
                      color: Colors.deepPurple,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      certificate.date,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: .2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
