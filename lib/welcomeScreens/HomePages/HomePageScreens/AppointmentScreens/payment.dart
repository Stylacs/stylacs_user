import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylac/welcomeScreens/HomePages/HomePageScreens/AppointmentScreens/thankyou.dart';
import '../../../../size_config.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final formKey = GlobalKey<FormState>();
  bool paymentOptiongroupValue = true;
  bool easypaisa = false;
  bool debitCard = true;
  String _countryName = "Pakistan";
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _emailName = TextEditingController();
  TextEditingController _phoneName = TextEditingController();
  TextEditingController _cardHolderName = TextEditingController();
  TextEditingController _cardNumber = TextEditingController();
  TextEditingController _cvv = TextEditingController();
  TextEditingController _zipCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var orentation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
      ),
      body: orentation == Orientation.portrait
          ? portraitScreen()
          : landscapScreen(),
    );
  }

  Widget portraitScreen() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: (20 / 7.6) * SizeConfig.heightMultiplier,
              ),
              firstLastNameRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),
              emailPhoneRow(),
              paymentOptionRow(),
              //payment method form................
              SizedBox(
                height: (50 / 7.6) * SizeConfig.heightMultiplier,
              ),
              cardHolderNameRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),

              cardCvvRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),

              zipCodeCountryRow(),
              SizedBox(
                height: (50 / 7.6) * SizeConfig.heightMultiplier,
              ),
              button()
            ],
          ),
        ),
      ),
    );
  }

  Widget landscapScreen() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: (20 / 7.6) * SizeConfig.heightMultiplier,
              ),
              firstLastNameRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),
              emailPhoneRow(),
              paymentOptionRow(),
              //payment method form................
              SizedBox(
                height: (50 / 7.6) * SizeConfig.heightMultiplier,
              ),
              cardHolderNameRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),

              cardCvvRow(),
              SizedBox(
                height: (15 / 7.6) * SizeConfig.heightMultiplier,
              ),

              zipCodeCountryRow(),
              SizedBox(
                height: (70 / 7.6) * SizeConfig.heightMultiplier,
              ),
              button()
            ],
          ),
        ),
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
                    "Payment",
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
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      Navigator.of(context).pushReplacement(PageTransition(
                          child: ThankYou(),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 700)));
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget firstLastNameRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 175, 190, 0.2),
              borderRadius: BorderRadius.all(
                Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
            child: TextFormField(
              controller: _firstName,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length < 3) {
                  return "Name is too short!!";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "First Name",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
        SizedBox(
          width: (10 / 3.6) * SizeConfig.widthMultiplier,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 175, 190, 0.2),
              borderRadius: BorderRadius.all(
                Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
            child: TextFormField(
              controller: _lastName,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length < 3) {
                  return "Name is too short!!";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Last Name",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget emailPhoneRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _emailName,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (!val.contains("@gmail.com")) {
                  return "Invalid Email!!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
        SizedBox(
          width: (10 / 3.6) * SizeConfig.widthMultiplier,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _phoneName,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length < 11) {
                  return "Phone number\ncontain 11 digits!!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Phone no",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget paymentOptionRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Radio(
                activeColor: Colors.purple[700],
                value: easypaisa,
                groupValue: paymentOptiongroupValue,
                onChanged: (val) {
                  setState(() {
                    debitCard = false;
                    easypaisa = true;
                  });
                }),
            Text("EasyPaisa",
                style: TextStyle(
                    color: Colors.purple[700],
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                    fontWeight: FontWeight.w500))
          ],
        ),
        Row(
          children: <Widget>[
            Radio(
                activeColor: Color.fromRGBO(255, 175, 190, 1),
                value: debitCard,
                groupValue: paymentOptiongroupValue,
                onChanged: (val) {
                  setState(() {
                    easypaisa = false;
                    debitCard = true;
                  });
                }),
            Text("Debit Card",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier,
                    fontWeight: FontWeight.w500))
          ],
        )
      ],
    );
  }

  Widget cardHolderNameRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _cardHolderName,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length < 3) {
                  return "Name is too short!!";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Card Holder Name",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget cardCvvRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _cardNumber,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length > 19) {
                  return "Invalid Card Number\nrange upto 19 digits!!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Card Number",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
        SizedBox(
          width: (10 / 3.6) * SizeConfig.widthMultiplier,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _cvv,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else if (val.length > 4) {
                  return "CVV contains\nupto 4 digits!!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "CVV",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget zipCodeCountryRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: TextFormField(
              controller: _zipCode,
              validator: (val) {
                if (val.isEmpty) {
                  return "This field is required!!";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Zip Code",
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: (16 / 7.6) * SizeConfig.heightMultiplier),
              ),
            ),
          ),
        ),
        SizedBox(
          width: (10 / 3.6) * SizeConfig.widthMultiplier,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: (10 / 3.6) * SizeConfig.widthMultiplier),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 175, 190, 0.2),
                borderRadius: BorderRadius.all(
                    Radius.circular((8 / 7.6) * SizeConfig.heightMultiplier))),
            child: countryCode(),
          ),
        ),
      ],
    );
  }

  Widget countryCode() {
    return CountryCodePicker(
      onChanged: (code) {
        setState(() {
          _countryName = code.name;
        });
        print(_countryName);
      },

      flagWidth: (18 / 3.6) * SizeConfig.widthMultiplier,
      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
      initialSelection: 'PK',
      favorite: ['+92', 'PK'],
      // optional. Shows only country name and flag
      showCountryOnly: true,
      // optional. Shows only country name and flag when popup is closed.
      showOnlyCountryWhenClosed: true,
      // optional. aligns the flag and the Text left
      alignLeft: true,
      // padding: EdgeInsets.only(top: 25),
      textStyle: TextStyle(fontSize: (16 / 7.6) * SizeConfig.textMultiplier),
    );
  }
}
