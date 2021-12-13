import 'package:flutter/material.dart';
import 'package:sp/Choose.dart';
import 'package:sp/MenuScreen.dart';
import 'package:sp/View_Maint.dart';
// Home Maintainance Module
class Home_Maint extends StatefulWidget {
  @override
  home createState() => home();
}

class home extends State<Home_Maint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Home Maintenance'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => MenuOptionsScreen())
              // );
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
                      child: Text('Add New Maintainable Item'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => choose())
                        );
                      },
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('View Maintainable Item'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => V()));
                      },
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Delete Maintainable Item'),
                      onPressed: () {},
                    )),
              ],
            )
        )
    );
  }
}