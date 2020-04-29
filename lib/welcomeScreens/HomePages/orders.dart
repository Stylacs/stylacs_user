import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/size_config.dart';
import 'package:stylac/welcomeScreens/HomePages/OrderScreens/search.dart';
import 'package:stylac/widget/drawer/drawer.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final scafKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var orentaion = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        key: scafKey,
        drawer: MyDrawer().buildDrawer(context),
        body: orentaion == Orientation.portrait
            ? portraitScreen()
            : landscapScreen(),
      ),
    );
  }

  Widget portraitScreen() {
    return Container(
      child: Stack(
        children: <Widget>[
//bottom section.....................

          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                height: (477 / 7.6) * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: (5 / 7.6) * SizeConfig.heightMultiplier,
                          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                      alignment: Alignment.bottomLeft,
                      height: (60 / 7.6) * SizeConfig.heightMultiplier,
                      child: Text("Booking History",
                          style: TextStyle(
                              fontSize:
                                  (17 / 7.6) * SizeConfig.heightMultiplier)),
                    ),
                    bottomListView()
                  ],
                ),
              ),
            ),
          ),

//top section....................
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: (200 / 7.6) * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          (15 / 7.6) * SizeConfig.heightMultiplier),
                      bottomRight: Radius.circular(
                          (15 / 7.6) * SizeConfig.heightMultiplier),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/order/orderBG.jpg"),
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 175, 190, 0.5),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            (15 / 7.6) * SizeConfig.heightMultiplier),
                        bottomRight: Radius.circular(
                            (15 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: (30 / 7.6) * SizeConfig.heightMultiplier),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size:
                                      (25 / 7.6) * SizeConfig.heightMultiplier,
                                ),
                                onPressed: () {
                                  scafKey.currentState.openDrawer();
                                }),
                          ),
                          Text(
                            "Your Appointment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    (25 / 7.6) * SizeConfig.heightMultiplier),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
//search bar.........................
          searchBar(-0.46)
        ],
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
//top section....................
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: (70 / 7.6) * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            (20 / 7.6) * SizeConfig.heightMultiplier),
                        bottomRight: Radius.circular(
                            (20 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/order/orderBG.jpg"),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 175, 190, 0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                              (20 / 7.6) * SizeConfig.heightMultiplier),
                          bottomRight: Radius.circular(
                              (20 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: (25 / 7.6) * SizeConfig.heightMultiplier,
                              ),
                              onPressed: () {
                                scafKey.currentState.openDrawer();
                              }),
                          Text(
                            "Your Appointment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    (25 / 7.6) * SizeConfig.heightMultiplier),
                          ),
                          //search bar.........................
                          searchBar(0.0)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

//bottom section.....................

            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: (30 / 3.6) * SizeConfig.widthMultiplier),
                  // height: (477 / 7.6) * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: (10 / 7.6) * SizeConfig.heightMultiplier),
                        alignment: Alignment.centerLeft,
                        height: (60 / 7.6) * SizeConfig.heightMultiplier,
                        child: Text("Booking History",
                            style: TextStyle(
                                fontSize:
                                    (17 / 7.6) * SizeConfig.heightMultiplier)),
                      ),
                      bottomListView()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBar(alignPosition) {
    return Align(
      alignment: Alignment(0.0, alignPosition),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            PageTransition(
                child: Search(),
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 800)),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: (10 / 3.6) * SizeConfig.widthMultiplier,
              vertical: (10 / 7.6) * SizeConfig.heightMultiplier),
          width: (270 / 3.6) * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 2.5,
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(0.0, 0.0),
                  spreadRadius: 0.0)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular((5 / 7.6) * SizeConfig.heightMultiplier),
            ),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: (10 / 3.6) * SizeConfig.widthMultiplier,
              ),
              Text(
                "Search",
                style: TextStyle(
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                    color: Colors.grey[400]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomListView() {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? Container(
            height: (415 / 7.6) * SizeConfig.heightMultiplier,
            color: Color.fromRGBO(243, 247, 255, 1),
            child: AnimationLimiter(
              child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int i) {
                  return AnimationConfiguration.staggeredList(
                    position: i,
                    duration: Duration(milliseconds: 600),
                    child: SlideAnimation(
                      verticalOffset: 0.0,
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                        child: listViewItems(i),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
//land scap section................
        : Container(
            // height: (387 / 7.6) * SizeConfig.heightMultiplier,
            color: Color.fromRGBO(243, 247, 255, 1),
            child: Column(
              children: <Widget>[
                for (var i = 0; i < listData.length; i++)
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: (10 / 7.6) * SizeConfig.heightMultiplier),
                    child: Container(
                      padding: EdgeInsets.only(
                          right: (10 / 3.6) * SizeConfig.widthMultiplier),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              (8 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: (100 / 3.6) * SizeConfig.widthMultiplier,
                            height: (100 / 7.6) * SizeConfig.heightMultiplier,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      (8 / 7.6) * SizeConfig.heightMultiplier),
                                  bottomLeft: Radius.circular(
                                      (8 / 7.6) * SizeConfig.heightMultiplier)),
                              image: DecorationImage(
                                  image: AssetImage(listData[i].image),
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: (20 / 3.6) * SizeConfig.widthMultiplier,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width:
                                      (200 / .6) * SizeConfig.widthMultiplier,
                                  child: Text(
                                    listData[i].title,
                                    style: TextStyle(
                                        fontSize: (16 / 7.6) *
                                            SizeConfig.heightMultiplier),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      (10 / 7.6) * SizeConfig.heightMultiplier,
                                ),
                                Text(
                                  "Price : ${listData[i].price}",
                                  style: TextStyle(
                                      fontSize: (15 / 7.6) *
                                          SizeConfig.heightMultiplier,
                                      color: Colors.pink),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: (90 / 3.6) *
                                          SizeConfig.widthMultiplier,
                                      child: Text(
                                        "Date: ${listData[i].date}",
                                        style: TextStyle(
                                            fontSize: (11 / 7.6) *
                                                SizeConfig.heightMultiplier,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      width: (10 / 3.6) *
                                          SizeConfig.widthMultiplier,
                                    ),
                                    Expanded(
                                      child: RaisedButton(
                                          padding: EdgeInsets.symmetric(),
                                          elevation: 0.0,
                                          color:
                                              Color.fromRGBO(255, 175, 190, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular((5 / 7.6) *
                                                  SizeConfig.heightMultiplier),
                                            ),
                                          ),
                                          child: Text(
                                            "Book again",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
//for loop ends..................................
              ],
            ),
          );
  }

  Widget listViewItems(i) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (10 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Container(
            padding:
                EdgeInsets.only(right: (5 / 3.6) * SizeConfig.widthMultiplier),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 2.5,
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0.0, 0.0),
                    spreadRadius: 0.0)
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(
                Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: (100 / 3.6) * SizeConfig.widthMultiplier,
                  height: (100 / 7.6) * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            (8 / 7.6) * SizeConfig.heightMultiplier),
                        bottomLeft: Radius.circular(
                            (8 / 7.6) * SizeConfig.heightMultiplier)),
                    image: DecorationImage(
                        image: AssetImage(listData[i].image),
                        alignment: Alignment.center,
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: (20 / 3.6) * SizeConfig.widthMultiplier,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: (200 / .6) * SizeConfig.widthMultiplier,
                        child: Text(
                          listData[i].title,
                          style: TextStyle(
                              fontSize:
                                  (16 / 7.6) * SizeConfig.heightMultiplier),
                        ),
                      ),
                      SizedBox(
                        height: (10 / 7.6) * SizeConfig.heightMultiplier,
                      ),
                      Text(
                        "Price : ${listData[i].price}",
                        style: TextStyle(
                            fontSize: (15 / 7.6) * SizeConfig.heightMultiplier,
                            color: Colors.pink),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: (90 / 3.6) * SizeConfig.widthMultiplier,
                            child: Text(
                              "Date: ${listData[i].date}",
                              style: TextStyle(
                                  fontSize:
                                      (11 / 7.6) * SizeConfig.heightMultiplier,
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: (10 / 3.6) * SizeConfig.widthMultiplier,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: (7 / 7.6) *
                                        SizeConfig.heightMultiplier),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 175, 190, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                                child: Text(
                                  "Book again",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: (15 / 7.6) *
                                          SizeConfig.heightMultiplier),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          i == listData.length - 1
              ? SizedBox(
                  height: (10 / 7.6) * SizeConfig.heightMultiplier,
                )
              : SizedBox(
                  height: 0.0,
                  width: 0.0,
                )
        ],
      ),
    );
  }
}

//model....................
class OrderListViewModel {
  final String image;
  final String title;
  final String price;
  final String date;

  OrderListViewModel({this.image, this.title, this.price, this.date});
}

List<OrderListViewModel> listData = [
  OrderListViewModel(
      image: "assets/images/order/makeup1.jpg",
      title: "Wavy Layered Bob",
      price: "\$25",
      date: "18-1-2019"),
  OrderListViewModel(
      image: "assets/images/order/makeup2.jpg",
      title: "Relaxed Bob",
      price: "\$15",
      date: "06-3-2019"),
  OrderListViewModel(
      image: "assets/images/order/makeup3.jpg",
      title: "Party Makeup",
      price: "\$35",
      date: "20-1-2019"),
  OrderListViewModel(
      image: "assets/images/order/makeup1.jpg",
      title: "Wavy Layered Bob",
      price: "\$25",
      date: "18-1-2019"),
  OrderListViewModel(
      image: "assets/images/order/makeup2.jpg",
      title: "Relaxed Bob",
      price: "\$15",
      date: "06-3-2019"),
  OrderListViewModel(
      image: "assets/images/order/makeup3.jpg",
      title: "Party Makeup",
      price: "\$35",
      date: "20-1-2019"),
];
