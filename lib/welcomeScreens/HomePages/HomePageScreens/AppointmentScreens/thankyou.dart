import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import '../../../../size_config.dart';
import '../../home.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? portraitScreen()
          : landscapScreen(),
    );
  }

  Widget portraitScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // color: Colors.red,
            height: (400 / 7.6) * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage("assets/images/thanku1.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center),
            ),
            child: ControlledAnimation(
              duration: Duration(seconds: 1),
              delay: Duration(seconds: 1),
              tween: Tween(begin: 1.0, end: 0.0),
              builder: (context, animation) {
                return Container(
                  color: Colors.white.withOpacity(animation),
                );
              },
            ),
          ),
          SizedBox(
            height: (50 / 7.6) * SizeConfig.heightMultiplier,
          ),
          button()
        ],
      ),
    );
  }

  Widget landscapScreen() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              // color: Colors.red,
              width: (300 / 3.6) * SizeConfig.widthMultiplier,
              height: (300 / 7.6) * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("assets/images/thanku1.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
              child: ControlledAnimation(
                duration: Duration(seconds: 1),
                delay: Duration(seconds: 1),
                tween: Tween(begin: 1.0, end: 0.0),
                builder: (context, animation) {
                  return Container(
                    color: Colors.white.withOpacity(animation),
                  );
                },
              ),
            ),
            SizedBox(
              height: (10 / 7.6) * SizeConfig.heightMultiplier,
            ),
            button()
          ],
        ),
      ),
    );
  }

  Widget button() {
    return Padding(
      padding:
          EdgeInsets.only(bottom: (20 / 7.6) * SizeConfig.heightMultiplier),
      child: Container(
        padding: MediaQuery.of(context).orientation == Orientation.portrait
            ? EdgeInsets.symmetric(
                horizontal: (15 / 3.6) * SizeConfig.widthMultiplier)
            : EdgeInsets.symmetric(
                horizontal: (60 / 3.6) * SizeConfig.widthMultiplier),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
                  splashColor: Colors.transparent,
                  child: Text(
                    "Click To Go Home",
                    style: TextStyle(
                        fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (8 / 7.6) * SizeConfig.heightMultiplier))),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(PageTransition(
                        child: Home(),
                        type: PageTransitionType.downToUp,
                        duration: Duration(milliseconds: 800)));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
