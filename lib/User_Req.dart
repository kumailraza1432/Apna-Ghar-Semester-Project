import 'package:flutter/material.dart';
import 'package:sp/Add_Req.dart';
import 'package:sp/Classes/User.dart';
import 'package:sp/MenuScreen.dart';
import 'View_Requirements.dart';
// Home User Requirement Module
class User_Req extends StatefulWidget {
  @override
  User1 createState() => User1();
}

class User1 extends State<User_Req> {
  @override
  User user = User();
  @override
  Widget build(BuildContext context) {
    Map? m = ModalRoute.of(context)?.settings.arguments as Map? ;
    user = m!["user"];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('User Requirements'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => MenuOptionsScreen()));
                   },
          ),
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
                      child: Text('Add Requirement'),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Add_Req", arguments: {"user": user});
                      },
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('View Requirement'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuoteList()));
                      },
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Delete Requirement'),
                      onPressed: () {},
                    )),
              ],
            )
        )
    );
  }
}