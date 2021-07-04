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
        seconds: 3,
      ),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
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
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 180,
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
                    color: Colors.purple,
                    fontSize: 25,
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
