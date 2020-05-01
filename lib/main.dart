import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Decide(),
        // theme: ThemeData.dark(),
      ),
    );

class Decide extends StatefulWidget {
  @override
  _DecideState createState() => _DecideState();
}

class _DecideState extends State<Decide> {
  int imagenumber = 1;

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal.shade700,
        title: Text(
          "Decidee",
          style: TextStyle(
            fontFamily: "SourceSansPro",
            fontSize: 30.0,
            color: Colors.white,
           // fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: data.height / 7,
          ),
          Center(
            child: FlatButton(
              child: Image.asset("images/ball$imagenumber.png"),
              onPressed: () {
                setState(() {
                  imagenumber = Random().nextInt(5) + 1;
                });
              },
              splashColor: Colors.teal.shade100,
            ),
          ),
          SizedBox(
            height: data.height / 7,
          ),
          Text(
            " Note: Pls don't use this app to make Cogent ",
            style: TextStyle(
                fontSize: 21,
                fontStyle: FontStyle.italic,
                fontFamily: "SourceSansPro"),
          ),
          Center(
              child: Text(
            "Life Decisions!",
            style: TextStyle(
                fontSize: 21,
                fontStyle: FontStyle.italic,
                fontFamily: "SourceSansPro",),
          ),)
        ],
      )),
    );
  }
}
