import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stylac/size_config.dart';
import 'package:stylac/welcomeScreens/HomePages/homePage.dart';
import 'package:stylac/welcomeScreens/HomePages/offers.dart';
import 'package:stylac/welcomeScreens/HomePages/orders.dart';
import 'package:stylac/welcomeScreens/HomePages/profile.dart';
import 'package:stylac/welcomeScreens/HomePages/tips.dart';

class Home extends StatefulWidget {
  final List<String> selectedType;
  final List<List> selectedServices;

  const Home({Key key, this.selectedType, this.selectedServices})
      : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 4;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Offers(),
    Orders(),
    Tips(),
    Profile()
  ];

  @override
  void initState() {
    super.initState();
    print(widget.selectedType);
    print(widget.selectedServices);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (15.0 / 3.6) * SizeConfig.widthMultiplier,
                vertical: (8 / 7.6) * SizeConfig.heightMultiplier),
            child: GNav(
                gap: (6 / 3.6) * SizeConfig.widthMultiplier,
                activeColor: Colors.white,
                color: Color.fromRGBO(255, 175, 190, 1),
                iconSize: (20 / 7.6) * SizeConfig.heightMultiplier,
                padding: EdgeInsets.symmetric(
                    horizontal: (15 / 3.6) * SizeConfig.widthMultiplier,
                    vertical: (5 / 7.6) * SizeConfig.heightMultiplier),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color.fromRGBO(255, 175, 190, 1),
                tabs: [
                  GButton(
                    icon: FontAwesomeIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.percent,
                    text: 'Offers',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.calendarCheck,
                    text: 'Orders',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.lightbulb,
                    text: 'Tips',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  print(index);
                }),
          ),
        ),
      ),
    );
  }
}
