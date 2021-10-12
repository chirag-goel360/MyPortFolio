import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/certificate/certification_class.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificationList extends StatelessWidget {
  final Certification certificate;

  CertificationList(
    this.certificate,
  );

  @override
  Widget build(BuildContext context) {
    final thumbNail = Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      alignment: FractionalOffset.centerLeft,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            certificate.image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      height: 90,
      width: 90,
    );

    final baseTextStyle = TextStyle(
      fontFamily: 'Poppins-Regular',
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
    );

    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );

    Widget _certificateValue({String value, String image}) {
      return Row(
        children: [
          Image.asset(
            image,
            height: 27,
          ),
          Container(
            width: 10,
          ),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: regularTextStyle,
          ),
        ],
      );
    }

    Widget _certificateDate({String value, String image}) {
      return Row(
        children: [
          Image.asset(
            image,
            height: 27,
          ),
          Container(
            width: 10,
          ),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: regularTextStyle,
          ),
        ],
      );
    }

    _launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could Not Launch URL';
      }
    }

    double width = MediaQuery.of(context).size.width;

    final cardContent = Container(
      margin: EdgeInsets.fromLTRB(
        75,
        15,
        15,
        15,
      ),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5,
          ),
          Text(
            certificate.name,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: headerTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: _certificateValue(
                  value: certificate.organization,
                  image: 'assets/company.png',
                ),
              ),
              Container(
                child: _certificateDate(
                  value: certificate.date,
                  image: 'assets/time.png',
                ),
              ),
            ],
          ),
          certificate.islink
              ? Padding(
                  padding: EdgeInsets.only(
                    left: (width / 2) - 150,
                    top: 5,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade300,
                    ),
                    onPressed: () {
                      String url = certificate.link;
                      _launchURL(url);
                    },
                    child: Text(
                      "Link",
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );

    List<Color> _colors = [
      Colors.purple.shade200,
      Colors.orange.shade200,
    ];

    List<double> _stops = [
      0.0,
      0.7,
    ];

    final certificateCard = Container(
      child: cardContent,
      margin: EdgeInsets.only(
        left: 40,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: _colors,
          stops: _stops,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.teal.shade300,
            blurRadius: 10,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      ),
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        height: 210,
        margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Stack(
          children: [
            certificateCard,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                thumbNail,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
