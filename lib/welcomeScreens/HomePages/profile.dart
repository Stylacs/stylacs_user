import 'package:animations/animations.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:stylac/size_config.dart';
import 'package:stylac/welcomeScreens/HomePages/editProfile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var orentaion = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        body: orentaion == Orientation.portrait
            ? portraitScreen()
            : landscapScreen(),
        floatingActionButton: OpenContainer(
          transitionDuration: Duration(milliseconds: 800),
          closedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular((40 / 7.6) * SizeConfig.heightMultiplier),
            ),
          ),
          openBuilder: (context, _) {
            return EditProfile();
          },
          closedBuilder: (context, openContainer) {
            return FloatingActionButton(
                child: Icon(
                  Icons.edit,
                  color: Color.fromRGBO(255, 175, 190, 1),
                ),
                backgroundColor: Colors.white,
                onPressed: openContainer);
          },
        ),
      ),
    );
  }

  Widget portraitScreen() {
    return Container(
      color: Color.fromRGBO(255, 175, 190, 1),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        // fit: StackFit.expand,
        children: <Widget>[
//Header content..............

          headerText(),

//bottom content.................

          bottomSection(),

//avatar....................
          Positioned(
            left: 0,
            right: 0,
            top: (60 / 7.6) * SizeConfig.heightMultiplier,
            child: glowAvatar(),
          ),
        ],
      ),
    );
  }

  Widget landscapScreen() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
//top section starts here.............
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      glowAvatar(),
                      Text(
                        "Umi Hani",
                        style: TextStyle(
                            fontSize:
                                (30.0 / 7.6) * SizeConfig.heightMultiplier,
                            color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ageBloodGroupETCData(
                                "Age",
                                "26",
                                "years",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.blueGrey),
                            ageBloodGroupETCData(
                                "Blood",
                                "AB",
                                "",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.blueGrey),
                            ageBloodGroupETCData(
                                "Gender",
                                "Female",
                                "",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.blueGrey),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            ageBloodGroupETCData(
                                "Height",
                                "174",
                                "",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent),
                            ageBloodGroupETCData(
                                "Weight",
                                "70 kg",
                                "",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent),
                            ageBloodGroupETCData(
                                "Goal",
                                "87%",
                                "",
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

//top section ends here............
              SizedBox(
                height: (10 / 7.6) * SizeConfig.heightMultiplier,
              ),
//bottom section starts here..................

              bottomActionContainers(LineIcons.check_circle_o, "Goal Setting"),
              bottomActionContainers(LineIcons.heart_o, "Favourite Salons"),
              bottomActionContainers(LineIcons.umbrella, "Orders"),

              SizedBox(
                height: (10 / 7.6) * SizeConfig.heightMultiplier,
              ),
            ],
          ),
        ),
      ),
    );
  }

//portrait screen widget methods............
  Widget headerText() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: ((MediaQuery.of(context).size.height * 0.15) / 7.6) *
            SizeConfig.heightMultiplier,
        // color: Colors.red,
        child: Center(
          child: Text(
            "User Profile",
            style: TextStyle(
                fontSize: (30.0 / 7.6) * SizeConfig.heightMultiplier,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget bottomSection() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin:
            EdgeInsets.only(bottom: (30 / 7.6) * SizeConfig.heightMultiplier),
        height: (510 / 7.6) * SizeConfig.heightMultiplier,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, 0
                -1.0, // vertical, move up 10
              ),
            ),
          ],
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: (20 / 3.6) * SizeConfig.widthMultiplier),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: (50 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    "Umi Hani",
                    style: TextStyle(
                        fontSize: (23 / 7.6) * SizeConfig.heightMultiplier,
                        color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: (30 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    children: <Widget>[
                      ageBloodGroupETCData("Age", "26", "years",
                          Colors.grey[400], Colors.grey[400], Colors.grey[400]),
                      ageBloodGroupETCData("Blood", "AB", "", Colors.grey[400],
                          Colors.grey[400], Colors.grey[400]),
                      ageBloodGroupETCData(
                          "Gender",
                          "Female",
                          "",
                          Colors.grey[400],
                          Colors.transparent,
                          Colors.grey[400]),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      ageBloodGroupETCData("Height", "174", "",
                          Colors.grey[400], Colors.grey[400], Colors.grey[400]),
                      ageBloodGroupETCData("Weight", "70 kg", "",
                          Colors.grey[400], Colors.grey[400], Colors.grey[400]),
                      ageBloodGroupETCData("Goal", "87%", "", Colors.grey[400],
                          Colors.transparent, Colors.grey[400]),
                    ],
                  ),
                  SizedBox(
                    height: (20 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  bottomActionContainers(
                      LineIcons.check_circle_o, "Goal Setting"),
                  bottomActionContainers(LineIcons.heart_o, "Favourite Salons"),
                  bottomActionContainers(LineIcons.umbrella, "Orders")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget glowAvatar() {
    return ControlledAnimation(
      duration: Duration(milliseconds: 700),
      curve: Curves.fastLinearToSlowEaseIn,
      tween: Tween(begin: 0.0, end: 55.0),
      builder: (context, animation) {
        return AvatarGlow(
          startDelay: Duration(milliseconds: 1000),
          glowColor: Colors.blueGrey,
          endRadius: (75.0 / 7.6) * SizeConfig.heightMultiplier,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Material(
            color: Color.fromRGBO(255, 175, 190, 1),
            elevation: 8.0,
            shape: CircleBorder(),
            child: Padding(
              padding: EdgeInsets.all(3.0),
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
        );
      },
    );
  }

  Widget ageBloodGroupETCData(title, limite, bottomText, topBorderColor,
      rightBorderColor, bottomBorderColor) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: (10 / 7.6) * SizeConfig.heightMultiplier),
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
              color: topBorderColor,
              width: (0.5 / 3.6) * SizeConfig.widthMultiplier,
              style: BorderStyle.solid),
          right: BorderSide(
              color: rightBorderColor,
              width: (1 / 3.6) * SizeConfig.widthMultiplier,
              style: BorderStyle.solid),
          bottom: BorderSide(
              color: bottomBorderColor,
              width: (0.5 / 3.6) * SizeConfig.widthMultiplier,
              style: BorderStyle.solid),
        )),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: (15 / 7.6) * SizeConfig.heightMultiplier),
              ),
              SizedBox(
                height: (20 / 7.6) * SizeConfig.heightMultiplier,
              ),
              Text(limite,
                  style: TextStyle(
                      fontSize: (10 / 7.6) * SizeConfig.heightMultiplier)),
              Text(bottomText,
                  style: TextStyle(
                      fontSize: (10 / 7.6) * SizeConfig.heightMultiplier))
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomActionContainers(icon, title) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (15 / 3.6) * SizeConfig.widthMultiplier,
          vertical: (8 / 7.6) * SizeConfig.heightMultiplier),
      child: InkWell(
        onTap: () {
          print("clicked");
        },
        child: Container(
          height: (40 / 7.6) * SizeConfig.heightMultiplier,
          padding: EdgeInsets.symmetric(
              horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 0.5,
                  color: Color.fromRGBO(255, 175, 190, 1),
                  offset: Offset(0.0, 0.0),
                  spreadRadius: 1.0)
            ],
            borderRadius: BorderRadius.all(Radius.circular(5)),
            // border: Border.all(
            //     color: Color.fromRGBO(255, 175, 190, 1),
            //     width: (1.5 / 3.6) * SizeConfig.widthMultiplier,
            //     style: BorderStyle.solid),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.blueGrey,
                    size: (25 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  SizedBox(
                    width: (5 / 3.6) * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                  ),
                ],
              ),
              Icon(
                LineIcons.arrow_right,
                color: Colors.blueGrey,
                size: (25 / 7.6) * SizeConfig.heightMultiplier,
              )
            ],
          ),
        ),
      ),
    );
  }
}
