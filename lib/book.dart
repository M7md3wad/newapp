//بسم الله الرحمن الرحيم
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Techlearn",
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text("TecLearn"),
              backgroundColor: Colors.green,
            ),
            endDrawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text("example@gmail.com"),
                    accountName: Text("mohammad awwad"),
                    currentAccountPicture:
                    CircleAvatar(child: Icon(Icons.person)),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/books_759.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  ListTile(
                    title: Text(
                      "المعلومات الشخصية",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colors.blue,
                  ),
                  ListTile(
                    title: Text(
                      "المواد",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.book,
                      color: Colors.blue,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colors.blue,
                  ),
                  ListTile(
                    title: Text(
                      "الاوقات المتاحة",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.blue,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colors.blue,
                  ),
                  ListTile(
                    title: Text(
                      "تسجيل دخول",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    leading: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 50,
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                  ),
                  Divider(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            body: ListView(
              children: <Widget>[

                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف الاول",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف الثاني",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف الثالث",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف الرابع",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف الخامس",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف السادس",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        child: ListTile(
                          title: Image.asset('images/ca/13.jpg'),
                          subtitle: Text("الصف السابع",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 30)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
