import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/body.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/bridal.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/facial.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/hair.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/make_up.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/more.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/nail.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/party_make_up.dart';
import '../../size_config.dart';
import 'HomePageScreens/notification.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      child: Column(
        children: <Widget>[
//top section....................
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (5 / 3.6) * SizeConfig.widthMultiplier,
                vertical: (8 / 7.6) * SizeConfig.heightMultiplier),
            color: Color.fromRGBO(255, 175, 190, 1),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Delivery Location",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  (10 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hayatabad,Peshawar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      (12 / 7.6) * SizeConfig.heightMultiplier),
                            ),
                            SizedBox(
                              width: (5 / 3.6) * SizeConfig.widthMultiplier,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Icon(
                                  FontAwesomeIcons.pen,
                                  color: Colors.white,
                                  size:
                                      (12 / 7.6) * SizeConfig.heightMultiplier,
                                ))
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                          size: (24 / 7.6) * SizeConfig.heightMultiplier,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(PageTransition(
                              child: Notifications(),
                              duration: Duration(milliseconds: 700),
                              type: PageTransitionType.leftToRightWithFade));
                        })
                  ],
                ),
                searchBar()
              ],
            ),
          ),
          headerImage(0.0),

//bottom section...................

          Column(
            children: <Widget>[
              //main content top section...............
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                      child: Text(
                        "Our Services",
                        style: TextStyle(
                            fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: (15 / 7.6) * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        menuItem(
                            "assets/images/home/hair.png", 'Hairs', Hair()),
                        menuItem("assets/images/home/body.jpg", 'Body', Body()),
                        menuItem("assets/images/home/nail.jpg", 'Nail', Nail()),
                        menuItem("assets/images/home/makeup.jpg", 'Make-up',
                            MakeUp()),
                      ],
                    ),
                    SizedBox(
                      height: (10 / 7.6) * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        menuItem("assets/images/home/bridal.jpg", 'Bridal',
                            Bridal()),
                        menuItem("assets/images/home/facial.png", 'Facial',
                            Facial()),
                        menuItem("assets/images/home/party.png",
                            'Party make-up', PartyMakeUp()),
                        moreButton(
                            "assets/images/home/more.png", 'More', More()),
                      ],
                    )
                  ],
                ),
              ),
//horizontal list view 1..................

              horizontalListViewTop(20, 10),

//horizontal list view 2......................

              horizontalListViewBottom(20, 10),
            ],
          )
        ],
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
//top section....................
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier,
                vertical: (8 / 7.6) * SizeConfig.heightMultiplier),
            color: Color.fromRGBO(255, 175, 190, 1),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Delivery Location",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  (11 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hayatabad,Peshawar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      (12 / 7.6) * SizeConfig.heightMultiplier),
                            ),
                            SizedBox(
                              width: (5 / 3.6) * SizeConfig.widthMultiplier,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Icon(
                                  FontAwesomeIcons.pen,
                                  color: Colors.white,
                                  size:
                                      (12 / 7.6) * SizeConfig.heightMultiplier,
                                ))
                          ],
                        )
                      ],
                    ),
                    searchBar(),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                          size: (24 / 7.6) * SizeConfig.heightMultiplier,
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
          headerImage(10.0),

//bottom section.....................
          Column(
            children: <Widget>[
              //main content top section...............
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                      child: Text(
                        "Our Services",
                        style: TextStyle(
                            fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: (15 / 7.6) * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        menuItem(
                            "assets/images/home/hair.png", 'Hairs', Hair()),
                        menuItem("assets/images/home/body.jpg", 'Body', Body()),
                        menuItem("assets/images/home/nail.jpg", 'Nail', Nail()),
                        menuItem("assets/images/home/makeup.jpg", 'Make-up',
                            MakeUp()),
                      ],
                    ),
                    SizedBox(
                      height: (10 / 7.6) * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        menuItem("assets/images/home/bridal.jpg", 'Bridal',
                            Bridal()),
                        menuItem("assets/images/home/facial.png", 'Facial',
                            Facial()),
                        menuItem("assets/images/home/party.png",
                            'Party make-up', PartyMakeUp()),
                        moreButton(
                            "assets/images/home/more.png", 'More', More()),
                      ],
                    )
                  ],
                ),
              ),
//horizontal list view 1..................

              horizontalListViewTop(20, 10),

//horizontal list view 2......................

              horizontalListViewBottom(20, 10),
            ],
          )
        ],
      ),
    );
  }

  Widget headerImage(padding) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (padding / 3.6) * SizeConfig.widthMultiplier),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: (200 / 7.6) * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
            bottomRight:
                Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/home/homeBG.jpg"),
            alignment: Alignment.centerLeft,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: (10 / 7.6) * SizeConfig.heightMultiplier,
              horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
              bottomRight:
                  Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
            ),
            gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(100, 0, 140, 0.7),
                  Color.fromRGBO(250, 122, 145, 0.7),
                  Color.fromRGBO(243, 176, 194, 0.7),
                  Color.fromRGBO(255, 175, 188, 0.7),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                stops: [0.2, 0.6, 0.8, 1]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text("Get 250 RS Discount",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: (16 / 7.6) * SizeConfig.heightMultiplier)),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    vertical: (8 / 7.6) * SizeConfig.heightMultiplier),
                width: (150 / 3.6) * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(
                        (8 / 7.6) * SizeConfig.heightMultiplier))),
                child: Text("Code - Stylacs",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 175, 190, 1),
                        fontSize: (14 / 7.6) * SizeConfig.heightMultiplier)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
      width: (400 / 3.6) * SizeConfig.widthMultiplier,
      height: (50 / 7.6) * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular((5 / 7.6) * SizeConfig.heightMultiplier),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: (23 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: (17 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
          Icon(
            Icons.mic,
            color: Colors.grey[400],
            size: (23 / 7.6) * SizeConfig.heightMultiplier,
          )
        ],
      ),
    );
  }

  Widget moreButton(image, title, pageToGo) {
    return InkWell(
      onTap: () {
        print("clicked");
        Navigator.of(context).push(PageTransition(
            duration: Duration(milliseconds: 700),
            child: pageToGo,
            type: PageTransitionType.fade));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: (5 / 7.6) * SizeConfig.heightMultiplier,
            horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
        width: MediaQuery.of(context).size.width * 0.22,
        height: (100 / 7.6) * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
          ),
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //       blurRadius: (0.5 / 7.6) * SizeConfig.heightMultiplier,
          //       color: Colors.black.withOpacity(0.2),
          //       offset: Offset(0.0, 0.0),
          //       spreadRadius: 0.0)
          // ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: (50 / 7.6) * SizeConfig.heightMultiplier,
            ),
            SizedBox(
              height: (5 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: (12 / 7.6) * SizeConfig.heightMultiplier,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Widget menuItem(image, title, pageToGo) {
    return InkWell(
      onTap: () {
        print("clicked");
        Navigator.of(context).push(PageTransition(
            duration: Duration(milliseconds: 600),
            child: pageToGo,
            type: PageTransitionType.fade));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: (5 / 7.6) * SizeConfig.heightMultiplier,
            horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
        width: MediaQuery.of(context).size.width * 0.22,
        height: (100 / 7.6) * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: (0.5 / 7.6) * SizeConfig.heightMultiplier,
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0.0, 0.0),
                spreadRadius: 0.0)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              width: (50 / 3.6) * SizeConfig.widthMultiplier,
              height: (50 / 7.6) * SizeConfig.heightMultiplier,
            ),
            SizedBox(
              height: (5 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: (12 / 7.6) * SizeConfig.heightMultiplier,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Widget horizontalListViewTop(topPadding, horizontalPadding) {
    return Padding(
      padding: EdgeInsets.only(
          left: (horizontalPadding / 3.6) * SizeConfig.widthMultiplier,
          right: (horizontalPadding / 3.6) * SizeConfig.widthMultiplier,
          top: (topPadding / 7.6) * SizeConfig.heightMultiplier),
      child: Container(
        height: (190 / 7.6) * SizeConfig.heightMultiplier,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recommended Services",
              style:
                  TextStyle(fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
            ),
            SizedBox(
              height: (20 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: horizontalListDataTop.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: EdgeInsets.only(
                        right: (15 / 3.6) * SizeConfig.widthMultiplier),
                    child: InkWell(
                      onTap: () {},
                      child: Hero(
                        tag: "image${horizontalListDataTop[i].image}",
                        child: Container(
                          width: (270 / 7.6) * SizeConfig.heightMultiplier,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(
                                (10 / 7.6) * SizeConfig.heightMultiplier)),
                            image: DecorationImage(
                              image: AssetImage(horizontalListDataTop[i].image),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    (10 / 7.6) * SizeConfig.heightMultiplier,
                                horizontal:
                                    (10 / 3.6) * SizeConfig.widthMultiplier),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  (10 / 7.6) * SizeConfig.heightMultiplier)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  horizontalListDataTop[i].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: (14 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                ),
                                Text(
                                  "at home",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: (11 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                )
                              ],
                            ),
                          ),
                        ),
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

  Widget horizontalListViewBottom(topPadding, horizontalPadding) {
    return Padding(
      padding: EdgeInsets.only(
          left: (horizontalPadding / 3.6) * SizeConfig.widthMultiplier,
          right: (horizontalPadding / 3.6) * SizeConfig.widthMultiplier,
          top: (topPadding / 7.6) * SizeConfig.heightMultiplier),
      child: Container(
        height: (230 / 7.6) * SizeConfig.heightMultiplier,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Popular Stylists",
              style:
                  TextStyle(fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
            ),
            SizedBox(
              height: (20 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: horizontalListDataBottom.length,
                itemBuilder: (BuildContext context, int i) {
                  return Padding(
                    padding: EdgeInsets.only(
                        right: (15 / 3.6) * SizeConfig.widthMultiplier),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Hero(
                            tag: "image${horizontalListDataBottom[i].image}",
                            child: Container(
                              width: (190 / 7.6) * SizeConfig.heightMultiplier,
                              height: (120 / 7.6) * SizeConfig.heightMultiplier,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    (10 / 7.6) * SizeConfig.heightMultiplier)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      horizontalListDataBottom[i].image),
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: (5 / 7.6) * SizeConfig.heightMultiplier,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    horizontalListDataBottom[i].name,
                                    style: TextStyle(
                                        fontSize: (14 / 7.6) *
                                            SizeConfig.heightMultiplier),
                                  ),
                                  SizedBox(
                                    width:
                                        (20 / 3.6) * SizeConfig.widthMultiplier,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.purple,
                                        size: (14 / 7.6) *
                                            SizeConfig.heightMultiplier,
                                      ),
                                      Text(
                                        horizontalListDataBottom[i].rating,
                                        style: TextStyle(
                                            fontSize: (14 / 7.6) *
                                                SizeConfig.heightMultiplier),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    (10 / 7.6) * SizeConfig.heightMultiplier,
                              ),
                              Text(
                                horizontalListDataBottom[i].designation,
                                style: TextStyle(
                                    fontSize: (12 / 7.6) *
                                        SizeConfig.heightMultiplier,
                                    color: Colors.grey[500]),
                              ),
                            ],
                          )
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
}

//top horizontal list model.....................
class TopListView {
  final String image;
  final String title;

  TopListView({this.image, this.title});
}

List<TopListView> horizontalListDataTop = [
  TopListView(
    image: "assets/images/order/makeup1.jpg",
    title: "Party Make-Up",
  ),
  TopListView(
    image: "assets/images/order/makeup3.jpg",
    title: "Facial",
  ),
  TopListView(
    image: "assets/images/order/makeup2.jpg",
    title: "Hairs Treatment",
  )
];

//Bottom horizontal list model.....................
class BottomListView {
  final String image;
  final String name;
  final String rating;
  final String designation;

  BottomListView({this.image, this.name, this.rating, this.designation});
}

List<BottomListView> horizontalListDataBottom = [
  BottomListView(
      image: "assets/images/home/jugnoo.jpg",
      name: "Jugnoo Salon",
      designation: "Hair Stylist",
      rating: "4.5"),
  BottomListView(
      image: "assets/images/home/savera.jpg",
      name: "Savera Pasha",
      designation: "Spa Specialist",
      rating: "4.0"),
  BottomListView(
      image: "assets/images/home/habiba.jpg",
      name: "HAbiba Naz",
      designation: "Make-Up Artist",
      rating: "4.5")
];
