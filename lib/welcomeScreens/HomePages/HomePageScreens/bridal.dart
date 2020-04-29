import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/AppointmentScreens/detail.dart';
import '../../../size_config.dart';

class Bridal extends StatefulWidget {
  @override
  _BridalState createState() => _BridalState();
}

class _BridalState extends State<Bridal> {
  @override
  Widget build(BuildContext context) {
    var orentation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: orentation == Orientation.portrait
          ? null
          : AppBar(
              title: Text(
                "Bridal",
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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                bottom: (20 / 7.6) * SizeConfig.heightMultiplier),
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
                  "Bridal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: (23 / 7.6) * SizeConfig.heightMultiplier),
                ),
                Text(""),
                Text(""),
              ],
            ),
          ),
//top salon list view..............
          SizedBox(
            height: (20 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (210 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Salons",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                horizontalListViewSalon(0.0, 0.0)
              ],
            ),
          ),

//middle home Based list view ..................

          SizedBox(
            height: (40 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (210 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Home Based",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                horizontalListViewHomeBased(0.0, 0.0)
              ],
            ),
          ),
//Bottom top rated Row ..................

          SizedBox(
            height: (30 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: (10 / 7.6) * SizeConfig.heightMultiplier,
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            height: (190 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 2.5,
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0.0, 2.0),
                    spreadRadius: 0.0)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Top Rated",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: (17 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                topRatedRow(0.0, 0.0)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
//top salon list view..............
          SizedBox(
            height: (20 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (210 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Salons",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                horizontalListViewSalon(0.0, 0.0)
              ],
            ),
          ),

//middle home Based list view ..................

          SizedBox(
            height: (40 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (210 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Home Based",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: (18 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                horizontalListViewHomeBased(0.0, 0.0)
              ],
            ),
          ),
//Bottom top rated Row ..................

          SizedBox(
            height: (30 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(left: (20 / 3.6) * SizeConfig.widthMultiplier),
            height: (190 / 7.6) * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 2.5,
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0.0, 2.0),
                    spreadRadius: 0.0)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Top Rated",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: (17 / 7.6) * SizeConfig.heightMultiplier),
                ),
                SizedBox(
                  height: (15 / 7.6) * SizeConfig.heightMultiplier,
                ),
                topRatedRow(0.0, 0.0)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget horizontalListViewSalon(topPadding, horizontalPadding) {
    return Container(
      // color: Colors.green,
      height: (170 / 7.6) * SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horizontalListDataSalon.length,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding:
                EdgeInsets.only(right: (15 / 3.6) * SizeConfig.widthMultiplier),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    child: AppoinmentDetails(
                      title: horizontalListDataSalon[i].name,
                      image: horizontalListDataSalon[i].image,
                      price: horizontalListDataSalon[i].price,
                      nameHeroTag: "salonName$i${horizontalListDataSalon[i].name}",
                      priceHeroTag: "salonPrice$i${horizontalListDataSalon[i].price}",
                    ),
                    duration: Duration(milliseconds: 600),
                    type: PageTransitionType.fade));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    width: (120 / 7.6) * SizeConfig.heightMultiplier,
                    height: (120 / 7.6) * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (10 / 7.6) * SizeConfig.heightMultiplier)),
                      image: DecorationImage(
                        image: AssetImage(horizontalListDataSalon[i].image),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
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
                          Hero(
                            tag: "salonName$i${horizontalListDataSalon[i].name}",
                            child: Container(
                              width: (120 / 3.6) * SizeConfig.widthMultiplier,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  horizontalListDataSalon[i].name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: (14 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: (8 / 7.6) * SizeConfig.heightMultiplier,
                      ),
                      Center(
                        child: Hero(
                          tag: "salonPrice$i${horizontalListDataSalon[i].price}",
                          child: Container(
                            child: Material(
                              color: Colors.transparent,
                              child: Text(
                                "Price : ${horizontalListDataSalon[i].price}",
                                style: TextStyle(
                                    fontSize: (12 / 7.6) *
                                        SizeConfig.heightMultiplier,
                                    color: Colors.pink),
                              ),
                            ),
                          ),
                        ),
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

  Widget horizontalListViewHomeBased(topPadding, horizontalPadding) {
    return Container(
      // color: Colors.green,
      height: (170 / 7.6) * SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horizontalListDataHomeBased.length,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding:
                EdgeInsets.only(right: (15 / 3.6) * SizeConfig.widthMultiplier),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    child: AppoinmentDetails(
                      title: horizontalListDataHomeBased[i].name,
                      image: horizontalListDataHomeBased[i].image,
                      price: horizontalListDataHomeBased[i].price,
                      nameHeroTag: "homeBasedName$i${horizontalListDataHomeBased[i].name}",
                      priceHeroTag: "homeBasedPrice$i${horizontalListDataHomeBased[i].price}",
                    ),
                    duration: Duration(milliseconds: 600),
                    type: PageTransitionType.fade));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    width: (120 / 7.6) * SizeConfig.heightMultiplier,
                    height: (120 / 7.6) * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (10 / 7.6) * SizeConfig.heightMultiplier)),
                      image: DecorationImage(
                        image: AssetImage(horizontalListDataHomeBased[i].image),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
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
                          Hero(
                            tag: "homeBasedName$i${horizontalListDataHomeBased[i].name}",
                            child: Container(
                              width: (120 / 3.6) * SizeConfig.widthMultiplier,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  horizontalListDataHomeBased[i].name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: (14 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: (8 / 7.6) * SizeConfig.heightMultiplier,
                      ),
                      Hero(
                        tag: "homeBasedPrice$i${horizontalListDataHomeBased[i].price}",
                        child: Container(
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "Price : ${horizontalListDataHomeBased[i].price}",
                              style: TextStyle(
                                  fontSize:
                                      (12 / 7.6) * SizeConfig.heightMultiplier,
                                  color: Colors.pink),
                            ),
                          ),
                        ),
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

  Widget topRatedRow(topPadding, horizontalPadding) {
    return Container(
      // color: Colors.green,
      height: (120 / 7.6) * SizeConfig.heightMultiplier,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          rowItems("assets/images/order/makeup1.jpg", "Corner Tucker"),
          rowItems("assets/images/order/makeup2.jpg", "Aron Sullivan"),
          rowItems("assets/images/order/makeup3.jpg", "Warren Patterson"),
//more widget design here......................
          InkWell(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  width: (70 / 7.6) * SizeConfig.heightMultiplier,
                  height: (70 / 7.6) * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        (10 / 7.6) * SizeConfig.heightMultiplier)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/order/makeup1.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              (10 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                        color: Colors.blue[400].withOpacity(0.5)),
                    child: Center(
                        child: Text(
                      "+655",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: (5 / 7.6) * SizeConfig.heightMultiplier,
                ),
                Container(
                  width: (60 / 3.6) * SizeConfig.widthMultiplier,
                  child: Text(
                    "More...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: (11 / 7.6) * SizeConfig.heightMultiplier),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rowItems(image, title) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            width: (70 / 7.6) * SizeConfig.heightMultiplier,
            height: (70 / 7.6) * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular((10 / 7.6) * SizeConfig.heightMultiplier)),
              image: DecorationImage(
                image: AssetImage(image),
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: (5 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            width: (60 / 3.6) * SizeConfig.widthMultiplier,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: (11 / 7.6) * SizeConfig.heightMultiplier),
            ),
          )
        ],
      ),
    );
  }
}

//Salons horizontal list model.....................
class SalonListView {
  final String image;
  final String name;
  final String price;
  final String detail;

  SalonListView({this.detail, this.image, this.name, this.price});
}

List<SalonListView> horizontalListDataSalon = [
  SalonListView(
    image: "assets/images/hair/sophia.jpg",
    name: "Jugnoo Parlour",
    price: "\$25",
  ),
  SalonListView(
    image: "assets/images/hair/isabella.jpg",
    name: "Blossom Parlour",
    price: "\$40",
  ),
  SalonListView(
    image: "assets/images/hair/emma.jpg",
    name: "Habiba Beauty Parlour",
    price: "\$20",
  )
];

//home based horizontal list model.....................
class HomeBasedListView {
  final String image;
  final String name;
  final String price;
  final String detail;

  HomeBasedListView({this.detail, this.image, this.name, this.price});
}

List<HomeBasedListView> horizontalListDataHomeBased = [
  HomeBasedListView(
    image: "assets/images/order/makeup1.jpg",
    name: "Sakiya Salon",
    price: "\$25",
  ),
  HomeBasedListView(
    image: "assets/images/order/makeup2.jpg",
    name: "Kashii Salon",
    price: "\$40",
  ),
  HomeBasedListView(
    image: "assets/images/order/makeup3.jpg",
    name: "Dolly Salon",
    price: "\$20",
  ),
];
