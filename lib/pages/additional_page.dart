import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/homepage.dart';

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
        color: Colors.black,
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
            Text(
              'Stealing your data 😜 🤪 😉',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
