import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safety Map"),
        backgroundColor: Color(0xFF9B27E0),
      ),
      body: Center(
        child: Text(
          "Map functionality will be implemented here.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
