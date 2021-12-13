import 'package:flutter/material.dart';
import 'package:sp/Home_Maintenance.dart';

// After Saving Requirements
class AfterSec extends StatefulWidget {
  @override
  AS createState() => AS();
}

class AS extends State<AfterSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 100,
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child: Text(
                      'Requirements Saved Successfully!!!',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 40),
                    )),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('OK'),
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