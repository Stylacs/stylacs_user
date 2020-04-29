import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/AppointmentScreens/bookApointment.dart';

import '../../../../size_config.dart';

class AppoinmentDetails extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  final String nameHeroTag;
  final String priceHeroTag;

  const AppoinmentDetails(
      {Key key,
      this.title,
      this.price,
      this.image,
      this.nameHeroTag,
      this.priceHeroTag})
      : super(key: key);

  @override
  _AppoinmentDetailsState createState() => _AppoinmentDetailsState();
}

class _AppoinmentDetailsState extends State<AppoinmentDetails> {
  int _selectedIndex = 0;
  List<Widget> _selectedWidget = [DetailTab(), InfoTab(), PhotoTab()];

  @override
  Widget build(BuildContext context) {
    var orentation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orentation == Orientation.portrait
          ? portraitScreen()
          : landscapScreen(),
    );
  }

  Widget portraitScreen() {
    return Stack(
      children: <Widget>[
//top section...................
        Align(alignment: Alignment.topCenter, child: headerSection()),
//details container.............................
        Align(
          alignment: Alignment(0.0, 0.25),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (15 / 3.6) * SizeConfig.widthMultiplier),
            child: Container(
              padding: EdgeInsets.only(
                  top: (10 / 7.6) * SizeConfig.heightMultiplier),
              height: (425 / 7.6) * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular((15 / 7.6) * SizeConfig.heightMultiplier),
                ),
              ),
              child: Column(
                children: <Widget>[
                  //detail header section...................
                  detailHeader(),
                  //detail middel content section...............
                  _selectedWidget.elementAt(_selectedIndex),
                  //detail bottom tab bar................
                  tabBar(),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: button(),
        ),
      ],
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
//top section...................
          headerSection(),
//details container.............................
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              height: (435 / 7.6) * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: <Widget>[
                  //detail header section...................
                  detailHeader(),
                  //detail middel content section...............
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: (70 / 3.6) * SizeConfig.widthMultiplier),
                    child: _selectedWidget.elementAt(_selectedIndex),
                  ),
                  //detail bottom tab bar................
                  tabBar(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: (30 / 7.6) * SizeConfig.heightMultiplier,
          ),
          button(),
        ],
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
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                      vertical: (20 / 7.6) * SizeConfig.heightMultiplier),
                  elevation: 3.0,
                  splashColor: Colors.transparent,
                  child: Text(
                    "Book Appointment",
                    style: TextStyle(
                        fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Color.fromRGBO(255, 175, 190, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (8 / 7.6) * SizeConfig.heightMultiplier))),
                  onPressed: () {
                    Navigator.of(context).push(PageTransition(
                        child: BookAppointment(),
                        duration: Duration(milliseconds: 600),
                        type: PageTransitionType.rightToLeftWithFade));
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget tabBar() {
    return Container(
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? (50 / 7.6) * SizeConfig.heightMultiplier
          : (60 / 7.6) * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 175, 190, 0.3),
          borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular((15 / 7.6) * SizeConfig.heightMultiplier),
            bottomRight:
                Radius.circular((15 / 7.6) * SizeConfig.heightMultiplier),
          )),
      child: DefaultTabController(
        length: 3,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: (3.0 / 7.6) * SizeConfig.heightMultiplier,
          indicatorColor: Colors.pink,
          tabs: [
            Text("Highlight"),
            Text("Info"),
            Text("Photos"),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget headerSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? (280 / 7.6) * SizeConfig.heightMultiplier
          : (200 / 7.6) * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        // color: Color.fromRGBO(255, 175, 190, 1),
        image: DecorationImage(
            image: AssetImage(widget.image),
            alignment: Alignment.center,
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
          bottomRight:
              Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top: (50 / 7.6) * SizeConfig.heightMultiplier),
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft:
                Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
            bottomRight:
                Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
          ),
          gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(255, 175, 190, 0.6),
                Colors.purple.withOpacity(0.4)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: <double>[0.7, 1]),
        ),
        child: Row(
          mainAxisAlignment:
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? MainAxisAlignment.spaceAround
                  : MainAxisAlignment.spaceEvenly,
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
              "Details",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (23 / 7.6) * SizeConfig.heightMultiplier),
            ),
            Text(""),
            Text(""),
          ],
        ),
      ),
    );
  }

  Widget detailHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: widget.nameHeroTag,
              child: Container(
                alignment: Alignment.centerLeft,
                width: (200 / 3.6) * SizeConfig.widthMultiplier,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: (10 / 7.6) * SizeConfig.heightMultiplier,
            ),
            Hero(
              tag: widget.priceHeroTag,
              child: Container(
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    "Price : ${widget.price}",
                    style: TextStyle(
                        fontSize: (14 / 7.6) * SizeConfig.heightMultiplier,
                        color: Colors.pink),
                  ),
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: (90 / 3.6) * SizeConfig.widthMultiplier,
            height: (30 / 7.6) * SizeConfig.heightMultiplier,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 1),
                borderRadius: BorderRadius.all(
                    Radius.circular((5 / 7.6) * SizeConfig.heightMultiplier))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add,
                  size: (11 / 7.6) * SizeConfig.heightMultiplier,
                  color: Colors.white,
                ),
                Text(
                  "Add Fav",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: (11 / 7.6) * SizeConfig.heightMultiplier),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

//detail tab class................
class DetailTab extends StatefulWidget {
  @override
  _DetailTabState createState() => _DetailTabState();
}

class _DetailTabState extends State<DetailTab> {
  String detail =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.bottomLeft,
          height: (50 / 7.6) * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Text(
            "Details",
            style:
                TextStyle(fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          // color: Colors.green,
          height: (270 / 7.6) * SizeConfig.heightMultiplier,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  detail,
                  style: TextStyle(
                      height: (1.7 / 7.6) * SizeConfig.heightMultiplier,
                      color: Colors.blueGrey,
                      fontSize: (13 / 7.6) * SizeConfig.heightMultiplier),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//info tab class..........
class InfoTab extends StatefulWidget {
  @override
  _InfoTabState createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  String detail =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.bottomLeft,
          height: (50 / 7.6) * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Text(
            "Information",
            style:
                TextStyle(fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          // color: Colors.green,
          height: (270 / 7.6) * SizeConfig.heightMultiplier,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  detail,
                  style: TextStyle(
                      height: (1.7 / 7.6) * SizeConfig.heightMultiplier,
                      color: Colors.blueGrey,
                      fontSize: (13 / 7.6) * SizeConfig.heightMultiplier),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//photo tab class....
class PhotoTab extends StatefulWidget {
  @override
  _PhotoTabState createState() => _PhotoTabState();
}

class _PhotoTabState extends State<PhotoTab> {
  String detail =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.bottomLeft,
          height: (50 / 7.6) * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: Text(
            "Photos",
            style:
                TextStyle(fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          // color: Colors.green,
          height: (270 / 7.6) * SizeConfig.heightMultiplier,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  detail,
                  style: TextStyle(
                      height: (1.7 / 7.6) * SizeConfig.heightMultiplier,
                      color: Colors.blueGrey,
                      fontSize: (13 / 7.6) * SizeConfig.heightMultiplier),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
