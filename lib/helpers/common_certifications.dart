import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/certificate/certification_history.dart';
import 'package:my_portfolio/helpers/certificate_list.dart';
import 'package:my_portfolio/helpers/responsive.dart';

Widget buildCertificationContent(BuildContext context) {
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
      : SizedBox();
}
