import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:my_portfolio/helpers/certificate/certification_history.dart';
import 'package:my_portfolio/pages/certificate_list.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/pages/certificate_list_desktop.dart';
import 'package:my_portfolio/pages/certificate_list_tablet.dart';

Widget buildCertificationContent(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Responsive.isMobile(context)
      ? SizedBox(
          height: 10,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 24,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return CertificationList(
                        certificationHistory[index],
                      );
                    },
                    childCount: certificationHistory.length,
                  ),
                ),
              ),
            ],
          ),
        )
      : Responsive.isDesktop(context)
          ? SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: GridView.builder(
                padding: EdgeInsets.all(15),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: width / (height / 1.7),
                ),
                itemCount: certificationHistory.length,
                itemBuilder: (context, index) {
                  return certificateGrid(
                    context,
                    certificationHistory[index],
                  );
                },
              ),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: GridView.builder(
                padding: EdgeInsets.all(15),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: width / (height / 1.8),
                ),
                itemCount: certificationHistory.length,
                itemBuilder: (context, index) {
                  return certificateTabletGrid(
                    context,
                    certificationHistory[index],
                  );
                },
              ),
            );
}

List<List<Color>> colors = [
  GradientColors.warmFlame,
  GradientColors.nightFade,
  GradientColors.springWarmt,
  GradientColors.juicyPeach,
  GradientColors.ladyLips,
  GradientColors.sunnyMorning,
  GradientColors.rainyAshville,
  GradientColors.frozenDreams,
  GradientColors.winterNeva,
  GradientColors.temptingAzure,
  GradientColors.amyCrisp,
  GradientColors.meanFruit,
  GradientColors.lightBluee,
  GradientColors.ripeMalinka,
  GradientColors.trueSunset,
  GradientColors.rareWind,
  GradientColors.wildApple,
  GradientColors.freshMilk,
  GradientColors.teenNotebook,
  GradientColors.heavenPeach,
  GradientColors.farawayRiver,
  GradientColors.overSun,
  GradientColors.summerGames,
  GradientColors.rozenBerry,
  GradientColors.noontoDusk,
  GradientColors.harmonicEnergy,
];
