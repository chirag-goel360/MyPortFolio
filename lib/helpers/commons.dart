import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/helpers/education_class.dart';
import 'package:my_portfolio/helpers/education_history.dart';
import 'package:my_portfolio/helpers/experience_class.dart';
import 'package:my_portfolio/helpers/experience_history.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/helpers/skills.dart';
import 'package:random_color/random_color.dart';

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
                fontSize: Responsive.isMobile(context) ? 25 : 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            WidgetSpan(
              child: Image.asset(
                'assets/lob.png',
                height: Responsive.isMobile(context) ? 20 : 30,
                width: Responsive.isMobile(context) ? 20 : 30,
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
            ? 'I am Chirag Goel, Mobile App Developer from Delhi, India'
            : 'I am Chirag Goel, Mobile App Developer from Delhi, India. I am a talented, ambitious and hardworking individual, with broad skills in Software Development, Software Engineering, Social Media and Leading Projects.',
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
        'Recent Computer Science Graduate (9.0 CGPA) seeking to use my frontend development experience in an entry-level position. Possess 11 months of internship experience building and testing applications for Android, iOS, and Windows. Skilled with C, C++, Java, Python, Django, SQL, Firebase and Flutter. Independently built lots of application that are liked by many people around the Globe.',
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
          fontSize: 17.0,
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
        fontSize: Responsive.isMobile(context) ? 12 : 14,
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
    'I worked on verious technologies during my Internship period. I worked on Wordpress, Flutter, SQL, Adobe XD and PHP.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 14,
    ),
  );
}

Widget buildEducationInfo() {
  return Text(
    'I learned how to work in team, time management, enhance skills in corporate world during my college period. This will help me in a long run.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 14,
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
              child: buildIcons(),
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
    '@ Chirag Goel. ALL RIGHTS RESERVED',
    style: TextStyle(
      fontSize: Responsive.isMobile(context) ? 10 : 12,
      color: Color(0xFF85819C),
    ),
  );
}

Widget buildIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {},
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
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.medium,
          color: Colors.black87,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.green,
          size: 20,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      GestureDetector(
        onTap: () {},
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
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.github,
          color: Colors.black38,
          size: 20,
        ),
      ),
    ],
  );
}
