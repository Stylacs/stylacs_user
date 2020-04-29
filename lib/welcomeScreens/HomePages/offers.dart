import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:stylac/widget/drawer/drawer.dart';

import '../../size_config.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
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
      child: Column(
        children: <Widget>[
//top section....................
          Column(
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
                    image: AssetImage("assets/images/offer/offerBG.jpg"),
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
                                size: (25 / 7.6) * SizeConfig.heightMultiplier,
                              ),
                              onPressed: () {
                                scafKey.currentState.openDrawer();
                              }),
                        ),
                        Text(
                          "Offers",
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

//bottom section.....................

          SingleChildScrollView(
            child: Container(
              height: (467 / 7.6) * SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: bottomListView(),
            ),
          ),

//search bar.........................
// searchBar(-0.45)
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
                        image: AssetImage("assets/images/offer/offerBG.jpg"),
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
                            "Offers",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    (25 / 7.6) * SizeConfig.heightMultiplier),
                          ),
                          Text(""),
                          //search bar.........................
                          // searchBar(0.0)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (20 / 7.6) * SizeConfig.heightMultiplier,
            ),
//bottom section.....................

            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                  // height: (477 / 7.6) * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: bottomListView(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomListView() {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? Container(
            height: (387 / 7.6) * SizeConfig.heightMultiplier,
            color: Color.fromRGBO(243, 247, 255, 1),
            child: AnimationLimiter(
              child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int i) {
                  return AnimationConfiguration.staggeredList(
                      position: i,
                      duration: Duration(milliseconds: 600),
                      child: SlideAnimation(
                        horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          child: listViewItems(i),
                        ),
                      ));
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
                                      (500 / 3.6) * SizeConfig.widthMultiplier,
                                  child: Text(
                                    listData[i].title,
                                    overflow: TextOverflow.ellipsis,
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
                                SizedBox(
                                  height:
                                      (10 / 7.6) * SizeConfig.heightMultiplier,
                                ),
                                Text(
                                  "Expire Date: ${listData[i].date}",
                                  style: TextStyle(
                                      fontSize: (11 / 7.6) *
                                          SizeConfig.heightMultiplier,
                                      color: Colors.grey),
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
          horizontal: (25 / 3.6) * SizeConfig.widthMultiplier),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: (10 / 7.6) * SizeConfig.heightMultiplier,
          ),
          Center(
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: (100 / 7.6) * SizeConfig.heightMultiplier,
                    width: (260 / 3.6) * SizeConfig.widthMultiplier,
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
                        Radius.circular(
                            (8 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(""),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: (190 / 3.6) * SizeConfig.widthMultiplier,
                              child: Text(
                                listData[i].title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: (16 / 7.6) *
                                        SizeConfig.heightMultiplier),
                              ),
                            ),
                            Text(
                              "Price : ${listData[i].price}",
                              style: TextStyle(
                                  fontSize:
                                      (15 / 7.6) * SizeConfig.heightMultiplier,
                                  color: Colors.pink),
                            ),
                            Text(
                              "Expire Date: ${listData[i].date}",
                              style: TextStyle(
                                  fontSize:
                                      (11 / 7.6) * SizeConfig.heightMultiplier,
                                  color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//list item image...................
                Positioned(
                  left: 0,
                  top: (7 / 7.6) * SizeConfig.heightMultiplier,
                  child: Container(
                    width: (85 / 3.6) * SizeConfig.widthMultiplier,
                    height: (85 / 7.6) * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (8 / 7.6) * SizeConfig.heightMultiplier)),
                      image: DecorationImage(
                          image: AssetImage(listData[i].image),
                          alignment: Alignment.center,
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
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
