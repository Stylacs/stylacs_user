import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Hair extends StatefulWidget {
  @override
  _HairState createState() => _HairState();
}

class _HairState extends State<Hair> {
  @override
  Widget build(BuildContext context) {
    var orentation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: orentation == Orientation.portrait
          ? null
          : AppBar(
              title: Text(
                "Hair Treatments",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
      body: orentation == Orientation.portrait
          ? portraitScreen()
          : landscapScreen(),
    );
  }

  Widget portraitScreen() {
    return Column(
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(bottom: (20 / 7.6) * SizeConfig.heightMultiplier),
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: (130 / 7.6) * SizeConfig.heightMultiplier,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 175, 190, 1),
            borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
              bottomRight:
                  Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: (25 / 7.6) * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                "Hair Treatments",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (23 / 7.6) * SizeConfig.heightMultiplier),
              ),
              Text(""),
              Text(""),
            ],
          ),
        ),
//top horizontal list view..............
        horizontalListViewTop(20.0, 5.0),

//menu items row.....................
        SizedBox(
          height: (40 / 7.6) * SizeConfig.heightMultiplier,
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: (20 / 3.6) * SizeConfig.widthMultiplier),
          height: (170 / 7.6) * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Services",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: (20 / 7.6) * SizeConfig.heightMultiplier),
              ),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  menuItem("assets/images/hair/shampoo.png", 'Hair -\nShampoo'),
                  menuItem("assets/images/hair/cutting.png", 'Hair -\nCutting'),
                  menuItem(
                      "assets/images/hair/rebonding.png", 'Hair -\nRebonding'),
                  menuItem("assets/images/hair/style.png", 'hair -\nStyle'),
                ],
              ),
            ],
          ),
        ),

//bottom horizontal list view #Expert section..................

        SizedBox(
          height: (20 / 7.6) * SizeConfig.heightMultiplier,
        ),
        Container(
          padding:
              EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
          height: (225 / 7.6) * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Experts",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: (20 / 7.6) * SizeConfig.heightMultiplier),
              ),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),
              horizontalListViewBottom(0.0, 0.0)
            ],
          ),
        ),
      ],
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
//top horizontal list view..............
          horizontalListViewTop(20.0, 5.0),

//menu items row.....................
          SizedBox(
            height: (40 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (170 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Services",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: (20 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    menuItem(
                        "assets/images/hair/shampoo.png", 'Hair - Shampoo'),
                    menuItem(
                        "assets/images/hair/cutting.png", 'Hair - Cutting'),
                    menuItem(
                        "assets/images/hair/rebonding.png", 'Hair - Rebonding'),
                    menuItem("assets/images/hair/style.png", 'hair - Style'),
                  ],
                ),
              ],
            ),
          ),

//bottom horizontal list view #Expert section..................

          SizedBox(
            height: (20 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (225 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Experts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: (20 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                horizontalListViewBottom(0.0, 0.0)
              ],
            ),
          ),
        ],
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
        height: (150 / 7.6) * SizeConfig.heightMultiplier,
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
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
                  tag: "image${horizontalListDataTop[i].image}$i",
                  child: Container(
                    width: (270 / 7.6) * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      // color: Color.fromRGBO(255, 175, 190, 1),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 175, 190, 0.5),
                            Colors.pink.withOpacity(0.4)
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft),
                      borderRadius: BorderRadius.all(Radius.circular(
                          (10 / 7.6) * SizeConfig.heightMultiplier)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            horizontalListDataTop[i].image,
                            color: Colors.pink,
                          ),
                        ),
                        Container(
                            width: (150 / 3.6) * SizeConfig.widthMultiplier,
                            child: Text(
                              horizontalListDataTop[i].title,
                              style: TextStyle(
                                  fontSize:
                                      (17 / 7.6) * SizeConfig.heightMultiplier),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget horizontalListViewBottom(topPadding, horizontalPadding) {
    return Container(
      // color: Colors.green,
      height: (170 / 7.6) * SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horizontalListDataBottom.length,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding:
                EdgeInsets.only(right: (15 / 3.6) * SizeConfig.widthMultiplier),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "image${horizontalListDataBottom[i].image}",
                    child: Container(
                      width: (100 / 7.6) * SizeConfig.heightMultiplier,
                      height: (100 / 7.6) * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                            (10 / 7.6) * SizeConfig.heightMultiplier)),
                        image: DecorationImage(
                          image: AssetImage(horizontalListDataBottom[i].image),
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
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            horizontalListDataBottom[i].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    (14 / 7.6) * SizeConfig.heightMultiplier),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: (8 / 7.6) * SizeConfig.heightMultiplier,
                      ),
                      Text(
                        horizontalListDataBottom[i].designation,
                        style: TextStyle(
                            fontSize: (12 / 7.6) * SizeConfig.heightMultiplier,
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
    );
  }

  Widget menuItem(image, title) {
    return InkWell(
      onTap: () {
        print("clicked");
        // Navigator.of(context).push(PageTransition(
        //     duration: Duration(milliseconds: 700),
        //     child: pageToGo,
        //     type: PageTransitionType.fade));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            vertical: (5 / 7.6) * SizeConfig.heightMultiplier,
            horizontal: (5 / 3.6) * SizeConfig.widthMultiplier),
        width: MediaQuery.of(context).size.width * 0.22,
        height: (110 / 7.6) * SizeConfig.heightMultiplier,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: (6 / 3.6) * SizeConfig.widthMultiplier,
                  vertical: (6 / 7.6) * SizeConfig.heightMultiplier),
              width: (60 / 3.6) * SizeConfig.widthMultiplier,
              height: (60 / 7.6) * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular((15 / 7.6) * SizeConfig.heightMultiplier),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: (0.5 / 7.6) * SizeConfig.heightMultiplier,
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0.0, 0.0),
                      spreadRadius: 0.0)
                ],
              ),
              child: Image.asset(
                image,
                width: (60 / 3.6) * SizeConfig.widthMultiplier,
                height: (60 / 7.6) * SizeConfig.heightMultiplier,
              ),
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
}

//top horizontal list model.....................
class TopListView {
  final String image;
  final String title;

  TopListView({this.image, this.title});
}

List<TopListView> horizontalListDataTop = [
  TopListView(
    image: "assets/images/beauty.png",
    title: "Feel Free to open your hair",
  ),
  TopListView(
    image: "assets/images/beauty.png",
    title: "Feel Free to open your hair",
  ),
  TopListView(
    image: "assets/images/beauty.png",
    title: "Feel Free to open your hair",
  )
];

//Bottom horizontal list model.....................
class BottomListView {
  final String image;
  final String name;
  final String designation;

  BottomListView({this.image, this.name, this.designation});
}

List<BottomListView> horizontalListDataBottom = [
  BottomListView(
    image: "assets/images/hair/sophia.jpg",
    name: "Sophia",
    designation: "Hair Stylist",
  ),
  BottomListView(
    image: "assets/images/hair/isabella.jpg",
    name: "Isabellla",
    designation: "Spa Specialist",
  ),
  BottomListView(
    image: "assets/images/hair/emma.jpg",
    name: "Emma",
    designation: "Hair Cutting Specialist",
  )
];
