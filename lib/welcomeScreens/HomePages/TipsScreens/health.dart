import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:stylac/welcomeScreens/HomePages/TipsScreens/detailScreen.dart';
import '../../../size_config.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
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
            horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
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
                        "Health Tips",
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
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.search,
                        size: (18 / 7.6) * SizeConfig.heightMultiplier,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            horizontalListView(30.0),
            SizedBox(
              height: (30 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "For You",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                )
              ],
            ),
            SizedBox(
              height: (15 / 7.6) * SizeConfig.heightMultiplier,
            ),
            verticalListView(),
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
                        "Health Tips",
                        style: TextStyle(
                            color: Color.fromRGBO(60, 79, 111, 1),
                            fontSize: (25 / 7.6) * SizeConfig.heightMultiplier,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: (8 / 3.6) * SizeConfig.widthMultiplier),
                  width: (300 / 3.6) * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular((30 / 7.6) * SizeConfig.heightMultiplier),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.search,
                            size: (18 / 7.6) * SizeConfig.heightMultiplier,
                            color: Colors.blueGrey,
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
                glowAvatar()
              ],
            ),
            horizontalListView(0.0),
            SizedBox(
              height: (30 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "For You",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                )
              ],
            ),
            SizedBox(
              height: (15 / 7.6) * SizeConfig.heightMultiplier,
            ),
            verticalListView(),
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

  Widget horizontalListView(topPadding) {
    return Padding(
      padding: EdgeInsets.only(
          top: (topPadding / 7.6) * SizeConfig.heightMultiplier),
      child: Container(
        height: (190 / 7.6) * SizeConfig.heightMultiplier,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Most Reading",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
            ),
            SizedBox(
              height: (20 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: horizontalListData.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: EdgeInsets.only(
                        right: (15 / 3.6) * SizeConfig.widthMultiplier),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          PageTransition(
                            child: Detail(
                              heroTagImage:
                                  "image${horizontalListData[i].image}",
                              heroTagTitle:
                                  "title${horizontalListData[i].title}",
                              mainTitle: "Health tips",
                              imageTitle: horizontalListData[i].title,
                              image: horizontalListData[i].image,
                              description: horizontalListData[i].description,
                            ),
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 500),
                          ),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Hero(
                              tag: "image${horizontalListData[i].image}",
                              child: Container(
                                width:
                                    (270 / 7.6) * SizeConfig.heightMultiplier,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular((10 / 7.6) *
                                          SizeConfig.heightMultiplier)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(horizontalListData[i].image),
                                    alignment: Alignment.center,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Hero(
                                tag: "title${horizontalListData[i].title}",
                                child: Container(
                                  width:
                                      (150 / 3.6) * SizeConfig.widthMultiplier,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: (5 / 3.6) *
                                          SizeConfig.widthMultiplier),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      horizontalListData[i].title,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: (14 / 7.6) *
                                            SizeConfig.heightMultiplier,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(60, 79, 111, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: (70 / 3.6) * SizeConfig.widthMultiplier,
                                child: Text(
                                  "5690 read",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: (10 / 7.6) *
                                          SizeConfig.heightMultiplier,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget verticalListView() {
    return Container(
      height: (320 / 7.6) * SizeConfig.heightMultiplier,
      // color: Colors.red,
      child: MediaQuery.of(context).orientation == Orientation.portrait
          ? AnimationLimiter(
              child: ListView.builder(
                itemCount: verticalListData.length,
                itemBuilder: (BuildContext context, int i) {
                  return AnimationConfiguration.staggeredList(
                    position: i,
                    duration: Duration(milliseconds: 600),
                    child: SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: listViewItems(i),
                      ),
                    ),
                  );
                },
              ),
            )
//list view ends here.................................
          : Column(
              children: <Widget>[
                for (int i = 0; i < verticalListData.length; i++)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: Detail(
                            heroTagImage:
                                "landscapimage${verticalListData[i].image}",
                            heroTagTitle:
                                "landscaptitle${verticalListData[i].title}",
                            mainTitle: "Health tips",
                            imageTitle: verticalListData[i].title,
                            image: verticalListData[i].image,
                            description: verticalListData[i].description,
                          ),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Hero(
                                tag:
                                    "landscapimage${verticalListData[i].image}",
                                child: Container(
                                  width:
                                      (100 / 3.6) * SizeConfig.widthMultiplier,
                                  height:
                                      (90 / 7.6) * SizeConfig.heightMultiplier,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular((8 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            verticalListData[i].image),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: (10 / 3.6) * SizeConfig.widthMultiplier,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Hero(
                                    tag:
                                        "landscaptitle${verticalListData[i].title}",
                                    child: Container(
                                      width: (340 / 3.6) *
                                          SizeConfig.widthMultiplier,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          verticalListData[i].title,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: (17 / 7.6) *
                                                SizeConfig.heightMultiplier,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(60, 79, 111, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        (8 / 7.6) * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    width: (340 / 3.6) *
                                        SizeConfig.widthMultiplier,
                                    child: Text(
                                      "if you not walked distance for some time,you should start",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: (15 / 7.6) *
                                              SizeConfig.heightMultiplier),
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        (8 / 7.6) * SizeConfig.heightMultiplier,
                                  ),
                                  Text(
                                    "5667 Read",
                                    style: TextStyle(
                                        color: Color.fromRGBO(60, 79, 111, 1),
                                        fontSize: (11 / 7.6) *
                                            SizeConfig.heightMultiplier),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: (10 / 7.6) * SizeConfig.heightMultiplier)
                      ],
                    ),
                  ),
//for loop ends here......................
              ],
            ),
    );
  }

  Widget listViewItems(i) {
    return Padding(
      padding: EdgeInsets.only(bottom: (5 / 7.6) * SizeConfig.heightMultiplier),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            PageTransition(
              child: Detail(
                heroTagImage: "portraitimage${verticalListData[i].image}",
                heroTagTitle: "portraittitle${verticalListData[i].title}",
                mainTitle: "Health tips",
                imageTitle: verticalListData[i].title,
                image: verticalListData[i].image,
                description: verticalListData[i].description,
              ),
              type: PageTransitionType.fade,
              duration: Duration(milliseconds: 500),
            ),
          );
        },
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: "portraitimage${verticalListData[i].image}",
                child: Container(
                  width: (100 / 3.6) * SizeConfig.widthMultiplier,
                  height: (90 / 7.6) * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier),
                    ),
                    image: DecorationImage(
                        image: AssetImage(verticalListData[i].image),
                        fit: BoxFit.cover,
                        alignment: Alignment.center),
                  ),
                ),
              ),
              SizedBox(
                width: (10 / 3.6) * SizeConfig.widthMultiplier,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: "portraittitle${verticalListData[i].title}",
                    child: Container(
                      width: (220 / 3.6) * SizeConfig.widthMultiplier,
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          verticalListData[i].title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: (17 / 7.6) * SizeConfig.heightMultiplier,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(60, 79, 111, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (8 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  Container(
                    width: (230 / 3.6) * SizeConfig.widthMultiplier,
                    child: Text(
                      "if you not walked distance for some time,you should start",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: (15 / 7.6) * SizeConfig.heightMultiplier),
                    ),
                  ),
                  SizedBox(
                    height: (8 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  Text(
                    "5667 Read",
                    style: TextStyle(
                        color: Color.fromRGBO(60, 79, 111, 1),
                        fontSize: (11 / 7.6) * SizeConfig.heightMultiplier),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//health tips model.....................
class HealthTipsModel {
  final String image;
  final String title;
  final String description;

  HealthTipsModel({this.image, this.title, this.description});
}

List<HealthTipsModel> horizontalListData = [
  HealthTipsModel(
      image: "assets/images/health1.jpg",
      title: "Health Care tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  HealthTipsModel(
      image: "assets/images/health2.jpg",
      title: "Walking tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  HealthTipsModel(
      image: "assets/images/health3.jpg",
      title: "Natural Health tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
];

List<HealthTipsModel> verticalListData = [
  HealthTipsModel(
      image: "assets/images/health1.jpg",
      title: "Gerenal Health tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  HealthTipsModel(
      image: "assets/images/health2.jpg",
      title: "Gerenal Walking tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  HealthTipsModel(
      image: "assets/images/health3.jpg",
      title: "Gerenal Health Care tips",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
];
