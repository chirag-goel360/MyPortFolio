import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/helpers/project/project_class.dart';
import 'package:my_portfolio/helpers/project/project_history.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:random_color/random_color.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildProjectContent(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height - 200,
    child: GridView.builder(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isDesktop(context)
            ? 4
            : Responsive.isTablet(context)
                ? 2
                : 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.25,
      ),
      itemCount: projectHistory.length,
      itemBuilder: (context, index) {
        return projectGrid(
          context,
          projectHistory[index],
        );
      },
    ),
  );
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could Not Launch URL';
  }
}

Widget projectGrid(context, Project projectHistory) {
  return Container(
    margin: EdgeInsets.only(
      bottom: 10,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.grey.shade200,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(
            4,
            4,
          ),
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 2,
                right: 2,
                bottom: 5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    String url = projectHistory.gitLink;
                    _launchURL(url);
                  },
                  child: Icon(
                    FontAwesomeIcons.solidFolder,
                    color: Colors.primaries[Random().nextInt(
                      Colors.primaries.length,
                    )],
                    size: 20,
                  ),
                ),
                Row(
                  children: [
                    projectHistory.isLink
                        ? GestureDetector(
                            onTap: () {
                              String url = projectHistory.link;
                              _launchURL(url);
                            },
                            child: Icon(
                              FontAwesomeIcons.link,
                              color: Colors.black,
                              size: 20,
                            ),
                          )
                        : Container(),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                    ),
                    projectHistory.isGit
                        ? GestureDetector(
                            onTap: () {
                              String url = projectHistory.gitLink;
                              _launchURL(url);
                            },
                            child: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.black38,
                              size: 20,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
            ),
            Center(
              child: Text(
                projectHistory.name,
                style: TextStyle(
                  color: Colors.primaries[Random().nextInt(
                    Colors.primaries.length,
                  )],
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 7,
              ),
            ),
            Text(
              projectHistory.description,
              maxLines: 6,
              overflow: TextOverflow.fade,
            ),
          ],
        ),
        buildTech(
          context,
          projectHistory,
        ),
      ],
    ),
  );
}

Widget buildTech(BuildContext context, Project project) {
  final List<Widget> widgets = project.tech.map(
    (skill) {
      return Padding(
        padding: EdgeInsets.only(
          right: 5,
          bottom: 3,
        ),
        child: buildTechChip(
          context,
          skill,
        ),
      );
    },
  ).toList();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildTechHeading(),
      Wrap(
        children: widgets,
      ),
    ],
  );
}

RandomColor _randomColor = RandomColor();

Widget buildTechHeading() {
  return Row(
    children: [
      Text(
        'Technology Used',
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: 'Christian_Heedlay',
        ),
      ),
      Text(
        ' ',
      ),
      Image.asset(
        'assets/laptop.png',
        height: 30,
        width: 30,
      ),
    ],
  );
}

Widget buildTechChip(BuildContext context, String label) {
  return Chip(
    backgroundColor: Colors.blueGrey.shade50,
    label: Text(
      label,
      style: TextStyle(
        color: Responsive.isMobile(context)
            ? _randomColor.randomColor(
                colorHue: ColorHue.multiple(
                  colorHues: [
                    ColorHue.red,
                    ColorHue.blue,
                    ColorHue.pink,
                  ],
                ),
              )
            : _randomColor.randomColor(
                colorHue: ColorHue.multiple(
                  colorHues: [
                    ColorHue.blue,
                    ColorHue.pink,
                  ],
                ),
              ),
        fontSize: Responsive.isMobile(context) ? 14 : 16,
      ),
    ),
  );
}
