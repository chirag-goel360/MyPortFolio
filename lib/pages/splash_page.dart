import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/additional_page.dart';
import 'package:my_portfolio/widgets/color_setter.dart';
import 'package:rive/rive.dart' as rive;

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoadingPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/background.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color.fromRGBO(
              255,
              255,
              255,
              0.2,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: rive.RiveAnimation.asset(
                    'assets/avatar.riv',
                    animations: [
                      'Example',
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                  ),
                ),
                Container(
                  height: 5,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                  ),
                ),
                CircularProgressIndicator(
                  color: Colors.teal,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                  ),
                ),
                GradientText(
                  'PortFolio',
                  textfont: 35,
                  textalign: TextAlign.center,
                  weight: FontWeight.bold,
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade200,
                      Colors.green.shade600,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
