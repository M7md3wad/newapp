import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      hintText: "Your Name",
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true)),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Your Age",
                      labelText: "Age",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true),
                keyboardType: TextInputType.number,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true),
              keyboardType: TextInputType.emailAddress,),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Your Qualification",
                      labelText: "Qualification",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true)),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Area",
                      labelText: "Your Area ",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true)),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Gender",
                      labelText: "Male or Female ",
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      border: InputBorder.none,
                      fillColor: Colors.green,
                      filled: true)),
              Center(
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text("Insert",
                      style: TextStyle(
                          fontSize: 25, letterSpacing: 2.2, color: Colors.black)),
                ),
              )
           ],
          ),
        ));
  }
}
