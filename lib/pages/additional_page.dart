import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/mainpage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 4,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.white,
            ],
            begin: FractionalOffset(
              0.0,
              0.0,
            ),
            end: FractionalOffset(
              1.0,
              0.0,
            ),
            stops: [
              0.0,
              1.0,
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: FlareActor(
                'assets/loading.flr',
                animation: 'active',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Stealing your Data',
                  style: TextStyle(
                    color: Colors.purple.shade400,
                    fontSize: 25,
                    fontFamily: 'Mayor',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'assets/winking-face.png',
                  height: 40,
                  width: 40,
                ),
                Image.asset(
                  'assets/beaming-face.png',
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
