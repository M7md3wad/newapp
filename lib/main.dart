import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:profile_app_ui/constants.dart';
import 'package:profile_app_ui/widgets/profile_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'setting.dart';
import 'edit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: kDarkTheme,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeProvider.of(context),
            home: ProfileScreen(),
          );
        },
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'Example', style: TextStyle(
              fontSize: 20),
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'Example@example.com', style: TextStyle(
              fontSize: 15),

          ),
           ],
      ),
    );

    var themeSwitcher = ThemeSwitcher(
      builder: (context) {
        return AnimatedCrossFade(
          duration: Duration(milliseconds: 200),
          crossFadeState:
              ThemeProvider.of(context).brightness == Brightness.dark
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
          firstChild: GestureDetector(
            onTap: () =>
                ThemeSwitcher.of(context).changeTheme(theme: kLightTheme),
            child: Icon(
              LineAwesomeIcons.sun,
              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
            ),
          ),
          secondChild: GestureDetector(
            onTap: () =>
                ThemeSwitcher.of(context).changeTheme(theme: kDarkTheme),
            child: Icon(
              LineAwesomeIcons.moon,
              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
            ),
          ),
        );
      },
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: kSpacingUnit.w * 3),
        Icon(
          LineAwesomeIcons.arrow_left,
          size: ScreenUtil().setSp(kSpacingUnit.w * 3),
        ),
        profileInfo,
        themeSwitcher,
        SizedBox(width: kSpacingUnit.w * 3),
      ],
    );

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(height: kSpacingUnit.w * 5),
                header,
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      RaisedButton(color: Colors.green ,

                        child: Text("Edit Profile",
                            style: TextStyle(
                                fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return  Settings();

                          }));
                        },
                      ),
                      RaisedButton(color: Colors.green ,
                        onPressed: () {},
                        child: Text("Book",
                            style: TextStyle(
                                fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                      ),
                      RaisedButton( color: Colors.green,
                        child: Text("Setting"  , style: TextStyle(fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return  SettingsPage();

                          }));
                          },
                      ),
                      RaisedButton(color: Colors.green ,
                        onPressed: () {},
                        child: Text("Invite",
                            style: TextStyle(
                                fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                      ),
                      RaisedButton(color: Colors.green,
                        onPressed: () {},
                        child: Text("Sign out",
                      style: TextStyle(
                          fontSize: 20, letterSpacing: 2.2, color: Colors.white)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
