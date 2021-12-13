import 'package:flutter/material.dart';
import 'package:sp/Add_Req.dart';
import 'package:sp/AfterAddRequirementSaveScreen.dart';
import 'package:sp/After_PaintM.dart';
import 'package:sp/Classes/MYSQL.dart';
import 'package:sp/Classes/User.dart';
import 'package:sp/Home_Maintenance.dart';
import 'package:sp/Paint_M.dart';
import 'package:sp/Security_Maint.dart';
import 'package:sp/User_Req.dart';
import 'package:sp/View_Maint.dart';
import 'package:sp/View_Requirements.dart';

import 'MenuScreen.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: "/Login",
    routes: {
      "/Login": (context) => MyApp(),
      "/MenuScreen": (context) => MenuOptionsScreen(),
      "/User_Req": (context) => User_Req(),
      "/Add_Req": (context) => Add_Req(),
      "/After_PaintM": (context) => AfterSec(),
      "/AfterAddRequirementSaveScreen": (context) => AfterAddReq(),
      "/AfterAddSecurity": (context) => AfterSec(),
      "/Paint_M": (context) => Paint(),
      "/Home_Maintenance": (context) => Home_Maint(),
      "/Security_Maint": (context) => security(),
      "/View_Maint": (context) => V(),
      "/View_Requirements": (context) => QuoteList(),
    }
    ,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  User user=new User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Apna Ghar'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                          fontFamily: 'RobotoMono'),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Login'),
                      onPressed: () async{
                        try {
                          if(!MYSQL.connected) await MYSQL.connect();
                          if(await user.login(nameController.text, passwordController.text))
                              Navigator.pushReplacementNamed(context, "/MenuScreen",arguments: {"user": user});
            } catch (e) {
                          print(e);
                        }
                      //}
                        },
                    )),
                ]
            )
        )
    );
  }
}