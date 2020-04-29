import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:stylac/size_config.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/beauty.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/calories.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/health.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/heart.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/sleep.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/training.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    var orentaion = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(243, 247, 255, 1),
        body: orentaion == Orientation.portrait
            ? portraitScreen()
            : landscapScreen(),
      ),
    );
  }

  Widget portraitScreen() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: (10 / 3.6) * SizeConfig.widthMultiplier,
            vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Summary",
                  style: TextStyle(
                      color: Color.fromRGBO(60, 79, 111, 1),
                      fontSize: (27 / 7.6) * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.bold),
                ),
                glowAvatar()
              ],
            ),
//main content here..................

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                containerRow(
                    'Health',
                    FontAwesomeIcons.walking,
                    'assets/images/circule.jpg',
                    '5454',
                    'steps',
                    Colors.orange[300],
                    Health(),
                    1,"health"),
                containerRow(
                    'Beauty',
                    FontAwesomeIcons.tint,
                    'assets/images/beauty.png',
                    '6',
                    'Types',
                    Colors.teal[300],
                    Beauty(),
                    1,"beauty"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                containerRow(
                    'Calories',
                    FontAwesomeIcons.solidDotCircle,
                    'assets/images/calories.png',
                    '5454',
                    'kcal',
                    Colors.orange,
                    Calories(),
                    1.5,"calories"),
                containerRow(
                    'Sleep',
                    FontAwesomeIcons.solidMoon,
                    'assets/images/clock.png',
                    '7',
                    'Hours',
                    Colors.black,
                    Sleep(),
                    1.5,"sleep"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                containerRow(
                    'Training',
                    FontAwesomeIcons.stopwatch,
                    'assets/images/dumble.png',
                    '45',
                    'min',
                    Color.fromRGBO(60, 79, 111, 1),
                    Training(),
                    2,"training"),
                containerRow(
                    'Heart',
                    FontAwesomeIcons.solidHeart,
                    'assets/images/heart.png',
                    '120',
                    'bpm',
                    Colors.red,
                    Heart(),
                    2,"heart"),
              ],
            )
//main content ends here...................
          ],
        ),
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: (10 / 3.6) * SizeConfig.widthMultiplier,
              vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Summary",
                    style: TextStyle(
                        color: Color.fromRGBO(60, 79, 111, 1),
                        fontSize: (27 / 7.6) * SizeConfig.heightMultiplier,
                        fontWeight: FontWeight.bold),
                  ),
                  glowAvatar()
                ],
              ),
//main content here..................

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  containerRow(
                      'Health',
                      FontAwesomeIcons.walking,
                      'assets/images/circule.jpg',
                      '5454',
                      'steps',
                      Colors.orange[300],
                      Health(),
                      0.1,"health"),
                  containerRow(
                      'Beauty',
                      FontAwesomeIcons.tint,
                      'assets/images/beauty.png',
                      '6',
                      'Types',
                      Colors.teal[300],
                      Beauty(),
                      0.1,"beauty"),
                ],
              ),
              SizedBox(
                height: (10 / 7.6) * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  containerRow(
                      'Calories',
                      FontAwesomeIcons.solidDotCircle,
                      'assets/images/calories.png',
                      '5454',
                      'kcal',
                      Colors.orange,
                      Calories(),
                      0.1,"calories"),
                  containerRow(
                      'Sleep',
                      FontAwesomeIcons.solidMoon,
                      'assets/images/clock.png',
                      '7',
                      'Hours',
                      Colors.black,
                      Sleep(),
                      0.1,"sleep"),
                ],
              ),
              SizedBox(
                height: (10 / 7.6) * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  containerRow(
                      'Training',
                      FontAwesomeIcons.stopwatch,
                      'assets/images/dumble.png',
                      '45',
                      'min',
                      Color.fromRGBO(60, 79, 111, 1),
                      Training(),
                      0.1,"training"),
                  containerRow(
                      'Heart',
                      FontAwesomeIcons.solidHeart,
                      'assets/images/heart.png',
                      '120',
                      'bpm',
                      Colors.red,
                      Heart(),
                      0.1,"heart"),
                ],
              )
//main content ends here...................
            ],
          ),
        ),
      ),
    );
  }

  Widget glowAvatar() {
    return ControlledAnimation(
      duration: Duration(milliseconds: 700),
      curve: Curves.fastLinearToSlowEaseIn,
      tween: Tween(begin: 0.0, end: 25.0),
      builder: (context, animation) {
        return Hero(
          tag: "profileDP",
          child: AvatarGlow(
            startDelay: Duration(milliseconds: 1000),
            glowColor: Colors.blueGrey,
            endRadius: (45.0 / 7.6) * SizeConfig.heightMultiplier,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            showTwoGlows: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: Material(
              color: Color.fromRGBO(255, 175, 190, 1),
              elevation: 8.0,
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/flutter.jpg'),
                  backgroundColor: Colors.grey[100],
                  radius: (animation / 7.6) * SizeConfig.heightMultiplier,
                ),
              ),
            ),
            shape: BoxShape.circle,
            animate: true,
            curve: Curves.fastOutSlowIn,
          ),
        );
      },
    );
  }

  Widget containerRow(headerTitle, headerIcon, mainImage, bottomLeftText,
      bottomRightText, iconColor, onTapCall, animationTimeSec,heroTitle) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageTransition(
              child: onTapCall,
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 600)),
        );
      },
      child: ControlledAnimation(
        duration: Duration(seconds: (animationTimeSec).round()),
        tween: Tween(
            begin: 100.0, end: (160.0 / 7.6) * SizeConfig.heightMultiplier),
        curve: Curves.decelerate,
        builder: (context, animation) {
          return Container(
            padding: EdgeInsets.symmetric(
                horizontal: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: animation,
            width: ((MediaQuery.of(context).size.width * 0.45) / 3.6) *
                SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(
                Radius.circular((20 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Hero(
                      tag: heroTitle,
                      child: Container(
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            headerTitle,
                            style: TextStyle(
                                color: Color.fromRGBO(60, 79, 111, 1),
                                fontSize:
                                    (17 / 7.6) * SizeConfig.heightMultiplier),
                          ),
                        ),
                      ),
                    ),
                    FaIcon(
                      headerIcon,
                      color: iconColor,
                      size: (19 / 7.6) * SizeConfig.heightMultiplier,
                    )
                  ],
                ),
                Image.asset(
                  mainImage,
                  height: (60 / 7.6) * SizeConfig.heightMultiplier,
                  width: (60 / 3.6) * SizeConfig.widthMultiplier,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bottomLeftText,
                      style: TextStyle(
                          color: Color.fromRGBO(60, 79, 111, 1),
                          fontSize: (15 / 7.6) * SizeConfig.heightMultiplier,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: (10 / 3.6) * SizeConfig.widthMultiplier,
                    ),
                    Text(
                      bottomRightText,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: (12 / 7.6) * SizeConfig.heightMultiplier,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
