import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/helpers/education_class.dart';
import 'package:my_portfolio/helpers/education_history.dart';
import 'package:my_portfolio/helpers/experience_class.dart';
import 'package:my_portfolio/helpers/experience_history.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/helpers/skills.dart';

Widget buildContent(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 24,
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
                letterSpacing: 1.0,
              ),
            ),
            TextSpan(
              text: 'Me',
              style: TextStyle(
                fontFamily: 'Beauty_Gadiez',
                color: Color(0xFF50AFC0),
                fontSize: Responsive.isMobile(context) ? 36 : 45,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        Responsive.isMobile(context)
            ? 'I am Chirag Goel, Mobile App Developer from Delhi, India'
            : 'I am Chirag Goel, Mobile App Developer from Delhi, India. I am a talented, ambitious and hardworking individual, with broad skills in Software Development, Software Engineering, Social Media and Leading Projects.',
        style: TextStyle(
          color: Color(0xFF45405B),
          fontFamily: 'Relate',
          fontSize: 17,
          letterSpacing: 1,
        ),
      ),
      SizedBox(
        height: Responsive.isMobile(context) ? 12 : 24,
      ),
      Padding(
        padding: EdgeInsets.only(
          right: 10.0,
        ),
        child: Text(
          'Recent Computer Science Graduate (9.0 CGPA) seeking to use my frontend development experience in an entry-level position. Possess 11 months of internship experience building and testing applications for Android, iOS, and Windows. Skilled with C, C++, Java, Python, Django, SQL, Firebase and Flutter. Independently built lots of application that are liked by many people around the Globe.',
          style: TextStyle(
            color: Color(0xFF85819C),
            height: 1.5,
            fontSize: 14,
          ),
        ),
      ),
      SizedBox(
        height: Responsive.isMobile(context) ? 24 : 48,
      ),
      Responsive.isMobile(context)
          ? Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildEducation(),
                SizedBox(
                  height: 24,
                ),
                buildExperience(),
                SizedBox(
                  height: 24,
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
        width: 20,
      ),
      Expanded(
        flex: 3,
        child: buildExperience(),
      ),
      SizedBox(
        width: 20,
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
          right: 8,
        ),
        child: buildChips(
          context,
          skill,
        ),
      );
    },
  ).toList();
  return Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildSkillsHeading(),
      Wrap(
        children: widgets,
      ),
    ],
  );
}

Widget buildSkillsHeading() {
  return Text(
    'Skill I Have',
    style: TextStyle(
      color: Color(0xFF45405B),
      fontSize: 17.0,
      letterSpacing: 1.0,
      fontFamily: 'Christian_Heedlay',
    ),
  );
}

Widget buildChips(BuildContext context, String label) {
  return Chip(
    label: Text(
      label,
      style: TextStyle(
        color: Color(0xFF85819C),
        height: 1.5,
        fontSize: Responsive.isMobile(context) ? 10 : 12,
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
        height: 8,
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
        height: 8,
      ),
      buildExperienceHistory(),
    ],
  );
}

Widget buildExperienceHeading() {
  return Text(
    'Experience',
    style: TextStyle(
      color: Color(0xFF45405B),
      fontFamily: 'Christian_Heedlay',
      fontSize: 17.0,
      letterSpacing: 1.0,
    ),
  );
}

Widget buildEducationHeading() {
  return Text(
    'Education',
    style: TextStyle(
      color: Color(0xFF45405B),
      fontFamily: 'Christian_Heedlay',
      fontSize: 17.0,
      letterSpacing: 1.0,
    ),
  );
}

Widget buildExperienceInfo() {
  return Text(
    'I worked on verious technologies during my Internship period. I worked on Wordpress, Flutter, SQL, Adobe XD and PHP.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 12,
      letterSpacing: 1,
    ),
  );
}

Widget buildEducationInfo() {
  return Text(
    'I learned how to work in team, time management, enhance skills in corporate world during my college period. This will help me in a long run.',
    style: TextStyle(
      color: Color(0xFF85819C),
      fontSize: 12,
      letterSpacing: 1,
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
            fontSize: 15,
          ),
        ),
        Text(
          experience.organization,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 12,
          ),
        ),
        Text(
          experience.start + ' - ' + experience.end,
          style: TextStyle(
            color: Color(0xFF45405B),
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
            fontSize: 15,
          ),
        ),
        Text(
          education.organization,
          style: TextStyle(
            color: Color(0xFF45405B),
            fontSize: 12,
          ),
        ),
        Text(
          education.start + ' - ' + education.end,
          style: TextStyle(
            color: Color(0xFF45405B),
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
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
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
      fontSize: Responsive.isMobile(context) ? 8 : 10,
      color: Color(0xFF85819C),
      letterSpacing: 1,
    ),
  );
}

Widget buildIcons() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.linkedinIn,
          color: Color(0xFF45405B),
          size: 20,
        ),
      ),
      SizedBox(
        width: 16,
      ),
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.medium,
          color: Color(0xFF45405B),
          size: 20,
        ),
      ),
      SizedBox(
        width: 16,
      ),
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.whatsapp,
          color: Color(0xFF45405B),
          size: 20,
        ),
      ),
      SizedBox(
        width: 16,
      ),
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.google,
          color: Color(0xFF45405B),
          size: 20,
        ),
      ),
      SizedBox(
        width: 16,
      ),
      GestureDetector(
        onTap: () {},
        child: Icon(
          FontAwesomeIcons.github,
          color: Color(0xFF45405B),
          size: 20,
        ),
      ),
    ],
  );
}
