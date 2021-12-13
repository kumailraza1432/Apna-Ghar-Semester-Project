import 'package:flutter/material.dart';
import 'package:sp/Home_Maintenance.dart';
import 'package:sp/User_Req.dart';
import 'package:sp/main.dart';

import 'Classes/User.dart';

// Menu Screen After Login
class MenuOptionsScreen extends StatefulWidget {
  @override
  _MenuOptionsScreenState createState() => _MenuOptionsScreenState();
}

class _MenuOptionsScreenState extends State<MenuOptionsScreen> {
   User user = User();
  @override
  Widget build(BuildContext context) {
    Map? m = ModalRoute.of(context)?.settings.arguments as Map? ;
    user = m!["user"];
    print("user in menu screen:"+ user.UserName);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Menu Options'),
      ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,

                      child: Text('Requirements'),
                      onPressed: () {
                        Navigator.pushNamed(context, "/User_Req",arguments: {"user": user});
                      },
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Home Maintenance'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home_Maint()));
                      },
                    )),
              ],
            )
        )
    );
  }
}