import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:my_portfolio/helpers/education_class.dart';
import 'package:my_portfolio/helpers/education_history.dart';
import 'package:my_portfolio/helpers/experience_class.dart';
import 'package:my_portfolio/helpers/experience_history.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/helpers/skills.dart';
import 'package:random_color/random_color.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildContent(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: 'About',
              style: TextStyle(
                fontFamily: 'Beauty_Gadiez',
                color: Color(0xFF45405B),
                fontSize: Responsive.isMobile(context) ? 36 : 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'Me ',
              style: TextStyle(
                fontFamily: 'Beauty_Gadiez',
                color: Colors.blue,
                fontSize: Responsive.isMobile(context) ? 28 : 37,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                'assets/lob.png',
                height: Responsive.isMobile(context) ? 28 : 37,
                width: Responsive.isMobile(context) ? 28 : 37,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        Responsive.isMobile(context)
            ? 'I am Chirag Goel, Android and Web Developer from Delhi, India'
            : 'I am Chirag Goel, Android and Web Developer from Delhi, India. I am a talented, ambitious and hardworking individual, with broad skills in Software Development, Software Engineering, Social Media and Leading Projects.',
        style: TextStyle(
          color: Color(0xFF45405B),
          fontFamily: 'Relate',
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: Responsive.isMobile(context) ? 12 : 24,
      ),
      Text(
        'Recent Computer Science Graduate (9.0 CGPA) seeking to use my development skills and experience in an entry-level position.I possess 11 months of internship experience in building and testing applications for Android, iOS, Web and Windows. I am skilled with C, C++, Java, Python, Django, SQL, Firebase and Flutter. I have independently built lots of application for different platforms that are liked by many people around the Globe.',
        style: TextStyle(
          color: Color(0xFF81819C),
          fontSize: 16,
        ),
      ),
      SizedBox(
        height: Responsive.isMobile(context) ? 20 : 40,
      ),
      Responsive.isMobile(context)
          ? Center(
              child: Image.asset(
                'assets/programmer_mobile.gif',
                height: 200,
              ),
            )
          : Responsive.isTablet(context)
              ? Center(
                  child: Image.asset(
                    'assets/programmer_tablet.gif',
                    height: 200,
                  ),
                )
              : Container(),
      Responsive.isMobile(context)
          ? SizedBox(
              height: 20,
            )
          : Responsive.isTablet(context)
              ? SizedBox(
                  height: 20,
                )
              : Container(),
      Responsive.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildEducation(),
                SizedBox(
                  height: 25,
                ),
                buildExperience(),
                SizedBox(
                  height: 25,
                ),
                buildSkill(
                  context,
                ),
              ],
            )
          : buildSkillEducationExperience(
              context,
            ),
    ],
  );
}

Widget buildSkillEducationExperience(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 3,
        child: buildEducation(),
      ),
      SizedBox(
        width: 15,
      ),
      Expanded(
        flex: 3,
        child: buildExperience(),
      ),
      SizedBox(
        width: 15,
      ),
      Expanded(
        flex: 2,
        child: buildSkill(
          context,
        ),
      ),
    ],
  );
}

Widget buildSkill(BuildContext context) {
  final List<Widget> widgets = skills.map(
    (skill) {
      return Padding(
        padding: EdgeInsets.only(
          right: 5,
          bottom: 3,
        ),
        child: buildChips(
          context,
          skill,
        ),
      );
    },
  ).toList();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildSkillsHeading(),
      Wrap(
        children: widgets,
      ),
    ],
  );
}

RandomColor _randomColor = RandomColor();

Widget buildSkillsHeading() {
  return Row(
    children: [
      Text(
        'Skill I Have',
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 17,
          fontWeight: FontWeight.w600,
          fontFamily: 'Christian_Heedlay',
        ),
      ),
      Text(
        ' ',
      ),
      Image.asset(
        'assets/skills.png',
        height: 30,
        width: 30,
      ),
    ],
  );
}

Widget buildChips(BuildContext context, String label) {
  return Chip(
    backgroundColor: Colors.blueGrey.shade50,
    label: Text(
      label,
      style: TextStyle(
        color: Responsive.isMobile(context)
            ? _randomColor.randomColor(
                colorHue: ColorHue.red,
              )
            : _randomColor.randomColor(
                colorHue: ColorHue.multiple(
                  colorHues: [
                    ColorHue.blue,
                    ColorHue.pink,
                  ],
                ),
              ),
        fontSize: Responsive.isMobile(context) ? 16 : 20,
      ),
    ),
  );
}

Widget buildEducation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildEducationHeading(),
      buildEducationInfo(),
      SizedBox(
        height: 10,
      ),
      buildEducationHistory(),
    ],
  );
}

Widget buildExperience() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildExperienceHeading(),
      buildExperienceInfo(),
      SizedBox(
        height: 10,
      ),
      buildExperienceHistory(),
    ],
  );
}

Widget buildExperienceHeading() {
  return Row(
    children: [
      Text(
        'Experience',
        style: TextStyle(
          color: Colors.indigoAccent.shade200,
          fontFamily: 'Christian_Heedlay',
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      Text(
        ' ',
      ),
      Image.asset(
        'assets/experience.png',
        height: 30,
        width: 30,
      ),
    ],
  );
}

Widget buildEducationHeading() {
  return Row(
    children: [
      Text(
        'Education',
        style: TextStyle(
          color: Colors.indigo.shade800,
          fontFamily: 'Christian_Heedlay',
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      Text(
        ' ',
      ),
      Image.asset(
        'assets/education.png',
        height: 30,
        width: 30,
      ),
    ],
  );
}

Widget buildExperienceInfo() {
  return Text(
    'I worked on various technologies during my Professional Career. Most of my work include working on Sitecore, Javascript, Wordpress, Flutter, SQL, Adobe XD and PHP.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 15,
    ),
  );
}

Widget buildEducationInfo() {
  return Text(
    'I learned how to work in team, time management, enhancing my skills in corporate world during my college life period. This will help me in a long run for sure.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 15,
    ),
  );
}

Widget buildExperienceHistory() {
  final List<Widget> widgets = experienceHistory.map(
    (experience) {
      return _buildExperienceTile(experience);
    },
  ).toList();
  return Column(
    children: widgets,
  );
}

Widget buildEducationHistory() {
  final List<Widget> widgets = educationHistory.map(
    (education) {
      return _buildEducationTile(education);
    },
  ).toList();
  return Column(
    children: widgets,
  );
}

Widget _buildExperienceTile(Experience experience) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 8,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          experience.degree,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 16,
          ),
        ),
        Text(
          experience.organization,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 13,
          ),
        ),
        Text(
          experience.start + ' - ' + experience.end,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

Widget _buildEducationTile(Education education) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 8,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          education.degree,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 16,
          ),
        ),
        Text(
          education.organization,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 13,
          ),
        ),
        Text(
          education.start + ' - ' + education.end,
          style: TextStyle(
            color: Colors.pinkAccent,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

Widget buildBottomBar(BuildContext context) {
  return Column(
    children: [
      Divider(),
      Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: buildCopyRight(
                context,
              ),
              alignment: Alignment.centerLeft,
            ),
            Align(
              child: buildIcons(
                context,
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildCopyRight(BuildContext context) {
  return Text(
    '@ Chirag Goel. ALL RIGHTS RESERVED.',
    style: TextStyle(
      fontSize: Responsive.isMobile(context) ? 10 : 12,
      color: Color(0xFF85819C),
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

_launchGmail() async {
  final mailToChirag = Mailto(
    to: ['chirag.goel360@gmail.com'],
    cc: ['chirag.goel360@yahoo.com'],
    subject: 'Hello Chirag Goel',
    body: 'I Liked Your PortFolio',
  );
  await launch('$mailToChirag');
}

Widget buildIcons(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          String url = 'https://www.linkedin.com/in/chirag-goel-06b804148/';
          _launchURL(url);
        },
        child: Icon(
          FontAwesomeIcons.linkedinIn,
          color: Colors.blue,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      GestureDetector(
        onTap: () {
          String url = 'https://medium.com/@chirag.goel360';
          _launchURL(url);
        },
        child: Icon(
          FontAwesomeIcons.medium,
          color: Colors.black87,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      !Responsive.isDesktop(context)
          ? GestureDetector(
              onTap: () {
                FlutterOpenWhatsapp.sendSingleMessage(
                  "919818496835",
                  "Hello Chirag",
                );
              },
              child: Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
                size: 20,
              ),
            )
          : Container(),
      !Responsive.isDesktop(context)
          ? SizedBox(
              width: 15,
            )
          : Container(),
      GestureDetector(
        onTap: () {
          _launchGmail();
        },
        child: Icon(
          FontAwesomeIcons.google,
          color: Colors.red,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      GestureDetector(
        onTap: () {
          String url = 'https://github.com/chirag-goel360';
          _launchURL(url);
        },
        child: Icon(
          FontAwesomeIcons.github,
          color: Colors.black38,
          size: 20,
        ),
      ),
    ],
  );
}
