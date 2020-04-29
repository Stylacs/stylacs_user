import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';

import '../../../size_config.dart';

class Detail extends StatefulWidget {
  final String image;
  final String description;
  final String imageTitle;
  final String mainTitle;
  final String heroTagImage;
  final String heroTagTitle;

  const Detail(
      {Key key,
      this.image,
      this.heroTagImage,
      this.heroTagTitle,
      this.description,
      this.imageTitle,
      this.mainTitle})
      : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var orentaion = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        body: orentaion == Orientation.portrait
            ? portraitScreen()
            : landscapScreen(),
      ),
    );
  }

  Widget portraitScreen() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: (8 / 3.6) * SizeConfig.widthMultiplier),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: "health",
                  child: Container(
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        widget.mainTitle,
                        style: TextStyle(
                            color: Color.fromRGBO(60, 79, 111, 1),
                            fontSize: (25 / 7.6) * SizeConfig.heightMultiplier,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                glowAvatar(),
              ],
            ),
            mainContent()
          ],
        ),
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: "health",
                  child: Container(
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        widget.mainTitle,
                        style: TextStyle(
                            color: Color.fromRGBO(60, 79, 111, 1),
                            fontSize: (25 / 7.6) * SizeConfig.heightMultiplier,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                glowAvatar()
              ],
            ),
            mainContent()
          ],
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

  Widget mainContent() {
    return Column(
      children: <Widget>[
        Hero(
          tag: widget.heroTagImage,
          child: Container(
            height: (200 / 7.6) * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular((20 / 7.6) * SizeConfig.heightMultiplier)),
              image: DecorationImage(
                image: AssetImage(widget.image),
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: widget.heroTagTitle,
              child: Container(
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.imageTitle,
                    style: TextStyle(
                      fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(60, 79, 111, 1),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.blue[400],
                ),
                onPressed: () {})
          ],
        ),
        Container(
          height: (395 / 7.6) * SizeConfig.heightMultiplier,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  widget.description,
                  style: TextStyle(
                      height: (1.5 / 7.6) * SizeConfig.heightMultiplier,
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
