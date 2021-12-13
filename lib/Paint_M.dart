import 'package:flutter/material.dart';
import 'package:sp/AfterAddSecurity.dart';
import 'package:sp/Choose.dart';
// Paint
class Paint extends StatefulWidget {
  @override
  P createState() => P();
}

class P extends State<Paint> {
  //const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
  var myInitialItem1;
  List<String> myItems1 = ['	AkzoNobel','Nippon Paint','Kansai Paint','Sherwin-Williams Cashmere','Fastest Dry Time: Ace Royal Interiors','Best Value: Benjamin Moore ben'];
  var myInitialItem2;
  List<String> myItems2 = ['Urbane Bronze','Babouche','Strawberry Red','Snowbound',
    'Aegean Teal','Bombay Pink'];
  var myInitialItem3;
  List<String> myItems3 = ['1','2','3','4','5','6','7'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Add Paint Maintenance'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => choose())
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
                    height: 10,
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child: Text(
                      'Select the Paint Brand',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DropdownButton(
                      hint: Text("Select"),
                      onChanged: (value){
                        myInitialItem1= value.toString();
                        setState(() {
                        });
                      },
                      value: myInitialItem1,
                      items: myItems1.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    )
                ),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 10,
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child: Text(
                      'Select the Paint Color',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DropdownButton(
                      hint: Text("Select"),
                      onChanged: (value){
                        myInitialItem2= value.toString();
                        setState(() {
                        });
                      },
                      value: myInitialItem2,
                      items: myItems2.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    )
                ),
                SizedBox(width: 100,height: 40,),
                Container(
                    height: 10,
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child: Text(
                      'Select the number of Rooms to be Painted',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DropdownButton(
                      hint: Text("Select"),
                      onChanged: (value){
                        myInitialItem3= value.toString();
                        setState(() {
                        });
                      },
                      value: myInitialItem3,
                      items: myItems3.map((items) {
                        return DropdownMenuItem(value: items, child: Text(items));
                      }).toList(),
                    )
                ),
                SizedBox(width: 100,height: 10,),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Save And Continue'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AfterSec()));
                      },
                    )
                ),
              ],
            )
        )
    );
  }
}