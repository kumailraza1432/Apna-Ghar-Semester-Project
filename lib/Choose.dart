import 'package:flutter/material.dart';
import 'package:sp/Home_Maintenance.dart';
import 'package:sp/Paint_M.dart';
import 'package:sp/Security_Maint.dart';
// Choose a Maintenance Type
class choose extends StatefulWidget {
  @override
  chooseM createState() => chooseM();
}

class chooseM extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Choose the Maintenance Type'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home_Maint())
              );
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
                      child: Text('Security Maintenance'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => security())
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
                      child: Text('Paint Maintenance'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Paint())
                        );
                      },
                    )),
                SizedBox(width: 100,height: 40,),
              ],
            )
        )
    );
  }
}