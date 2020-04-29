import 'package:flutter/material.dart';

class Nail extends StatefulWidget {
  @override
  _NailState createState() => _NailState();
}

class _NailState extends State<Nail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nails"),
      ),
    );
  }
}