import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/AppointmentScreens/appointmentDate.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/AppointmentScreens/payment.dart';

import '../../../../size_config.dart';

class BookAppointment extends StatefulWidget {
  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime _selectedDate;
  String _selectedTimeSlot;
  int _isSelectedSpecialistIndex = 0;
  int _isSelectedTimeSlotIndex;
  List<String> usertimeSlots;

  @override
  void initState() {
    super.initState();
    usertimeSlots = horizontalListDataHomeBased[0].timeSlots;
  }

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
            width: MediaQuery.of(context).size.width,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //detail header section...................
                  detailHeader(),
                  //detail middel content section...............
                  SizedBox(
                    height: (20 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  chooseSpecialist(),
                  SizedBox(
                    height: (10 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  //time slots section.................
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                      child: Text(
                        "Available Slots",
                        style: TextStyle(
                            fontSize: (14 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (20 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  timeSlotSection(),
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
            width: MediaQuery.of(context).size.width,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //detail header section...................
                  detailHeader(),
                  //detail middel content section...............
                  SizedBox(
                    height: (20 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  chooseSpecialist(),
                  SizedBox(
                    height: (10 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  //time slots section.................
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
                      child: Text(
                        "Available Slots",
                        style: TextStyle(
                            fontSize: (14 / 7.6) * SizeConfig.heightMultiplier),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (20 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  timeSlotSection(),
                ],
              ),
            ),
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
                    "Confirm Appointment",
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
                    if (_selectedTimeSlot != null && _selectedDate != null) {
                      Navigator.of(context).push(PageTransition(
                          child: Payment(),
                          duration: Duration(milliseconds: 600),
                          type: PageTransitionType.fade));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Plz Select Appointment Date and a Time Slot!!!",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget headerSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? (320 / 7.6) * SizeConfig.heightMultiplier
          : (200 / 7.6) * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 175, 190, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
          bottomRight:
              Radius.circular((12 / 7.6) * SizeConfig.heightMultiplier),
        ),
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
            "Book Appointment",
            style: TextStyle(
                color: Colors.white,
                fontSize: (23 / 7.6) * SizeConfig.heightMultiplier),
          ),
          Text(""),
          Text(""),
        ],
      ),
    );
  }

  Widget detailHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
      child: _selectedDate == null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Select Appointment Date",
                  style: TextStyle(
                      fontSize: (14 / 7.6) * SizeConfig.heightMultiplier),
                ),
                FlatButton.icon(
                  onPressed: () async {
                    _selectedDate = await Navigator.of(context).push(
                        PageTransition(
                            child: Date(),
                            duration: Duration(milliseconds: 500),
                            type: PageTransitionType.fade));
                  },
                  padding: EdgeInsets.symmetric(
                      horizontal: (8 / 3.6) * SizeConfig.widthMultiplier,
                      vertical: (5 / 7.6) * SizeConfig.heightMultiplier),
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.pink,
                    size: (15 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  label: Text(
                    "Select Date",
                    style: TextStyle(
                        fontSize: (13 / 7.6) * SizeConfig.heightMultiplier,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Color.fromRGBO(255, 175, 190, 1).withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (8 / 7.6) * SizeConfig.heightMultiplier))),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Selected Date",
                  style: TextStyle(
                      fontSize: (14 / 7.6) * SizeConfig.heightMultiplier),
                ),
                FlatButton.icon(
                  onPressed: () async {
                    _selectedDate = await Navigator.of(context).push(
                        PageTransition(
                            child: Date(),
                            duration: Duration(milliseconds: 500),
                            type: PageTransitionType.fade));
                  },
                  padding: EdgeInsets.symmetric(
                      horizontal: (8 / 3.6) * SizeConfig.widthMultiplier,
                      vertical: (5 / 7.6) * SizeConfig.heightMultiplier),
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.pink,
                    size: (15 / 7.6) * SizeConfig.heightMultiplier,
                  ),
                  label: Text(
                    "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                    style: TextStyle(
                        fontSize: (14 / 7.6) * SizeConfig.heightMultiplier,
                        fontWeight: FontWeight.w400),
                  ),
                  color: Color.fromRGBO(255, 175, 190, 1).withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          (8 / 7.6) * SizeConfig.heightMultiplier))),
                )
              ],
            ),
    );
  }

  Widget chooseSpecialist() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: (120 / 7.6) * SizeConfig.heightMultiplier,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            child: Text(
              "Choose Specialist",
              style:
                  TextStyle(fontSize: (14 / 7.6) * SizeConfig.heightMultiplier),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
//horizontal list view here....................
                for (int i = 0; i < horizontalListDataHomeBased.length; i++)
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: (10 / 3.6) * SizeConfig.widthMultiplier,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isSelectedTimeSlotIndex = null;
                            _isSelectedSpecialistIndex = i;
                            usertimeSlots =
                                horizontalListDataHomeBased[i].timeSlots;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: (20 / 7.6) * SizeConfig.heightMultiplier),
                          child: Container(
                            width: (70 / 7.6) * SizeConfig.heightMultiplier,
                            height: (70 / 7.6) * SizeConfig.heightMultiplier,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: _isSelectedSpecialistIndex != null &&
                                          _isSelectedSpecialistIndex == i
                                      ? Colors.pink
                                      : Colors.transparent,
                                  width: _isSelectedSpecialistIndex != null &&
                                          _isSelectedSpecialistIndex == i
                                      ? (2.0 / 3.6) * SizeConfig.widthMultiplier
                                      : 0.0,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  (8 / 7.6) * SizeConfig.heightMultiplier)),
                              image: DecorationImage(
                                image: AssetImage(
                                    horizontalListDataHomeBased[i].image),
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
//list view ends here......................
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget timeSlotSection() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
      width: MediaQuery.of(context).size.width,
      height: (150 / 7.6) * SizeConfig.heightMultiplier,
      // color: Colors.green,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: usertimeSlots.length,
        itemBuilder: (context, i) {
          return FlatButton(
            highlightColor: Colors.red,
            onPressed: () {
              setState(() {
                _isSelectedTimeSlotIndex = i;
                _selectedTimeSlot = usertimeSlots[_isSelectedTimeSlotIndex];
                print(_selectedTimeSlot);
              });
            },
            child: Text(
              usertimeSlots[i],
              style: TextStyle(
                  fontSize: (12 / 7.6) * SizeConfig.heightMultiplier,
                  color: _isSelectedTimeSlotIndex != null &&
                          _isSelectedTimeSlotIndex == i
                      ? Colors.white
                      : Colors.black),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            padding: EdgeInsets.symmetric(),
            color: _isSelectedTimeSlotIndex != null &&
                    _isSelectedTimeSlotIndex == i
                ? Color.fromRGBO(255, 175, 190, 1)
                : Color.fromRGBO(255, 175, 190, 0.2),
          );
        },
        padding: EdgeInsets.symmetric(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: (10.0 / 3.6) * SizeConfig.widthMultiplier,
            mainAxisSpacing: (5.0 / 7.6) * SizeConfig.heightMultiplier,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 4),
            crossAxisCount:
                (MediaQuery.of(context).orientation == Orientation.portrait)
                    ? 4
                    : 3),
      ),
    );
  }
}

//Choose Specialist horizontal list model.....................
class HomeBasedListView {
  final String image;
  final List<String> timeSlots;

  HomeBasedListView({this.timeSlots, this.image});
}

List<HomeBasedListView> horizontalListDataHomeBased = [
  HomeBasedListView(image: "assets/images/order/makeup1.jpg", timeSlots: [
    '6:00 PM',
    '5:00 AM',
    '3:00 AM',
    '2:00 PM',
    '1:00 PM',
    '7:00 AM',
    '9:00 PM',
    '10:00 AM',
    '12:00 AM',
    '8:00 PM',
    '2:00 PM',
  ]),
  HomeBasedListView(image: "assets/images/order/makeup2.jpg", timeSlots: [
    '6:00 PM',
    '5:00 AM',
    '3:00 AM',
    '2:00 PM',
    '1:00 PM',
    '7:00 AM',
    '9:00 PM',
    '2:00 PM',
  ]),
  HomeBasedListView(image: "assets/images/order/makeup3.jpg", timeSlots: [
    '6:00 PM',
    '5:00 AM',
    '3:00 AM',
    '2:00 PM',
    '1:00 PM',
    '7:00 AM',
    '9:00 PM',
    '10:00 AM',
    '12:00 AM',
    '8:00 PM',
    '2:00 PM',
  ]),
  HomeBasedListView(image: "assets/images/order/makeup1.jpg", timeSlots: [
    '2:00 PM',
    '1:00 PM',
    '7:00 AM',
    '9:00 PM',
    '10:00 AM',
    '12:00 AM',
    '8:00 PM',
    '2:00 PM',
  ]),
  HomeBasedListView(image: "assets/images/order/makeup2.jpg", timeSlots: [
    '6:00 PM',
    '5:00 AM',
    '3:00 AM',
    '2:00 PM',
    '1:00 PM',
    '7:00 AM',
  ]),
];
