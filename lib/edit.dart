import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Settings> {
  @override

  Widget build(BuildContext context){
    return Column(
      children:[Text("Edit Profile", style:TextStyle(
        fontSize: 20.0
      ))],

    );
  }
}