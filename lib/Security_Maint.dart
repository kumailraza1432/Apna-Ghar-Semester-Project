import 'package:flutter/material.dart';
import 'package:sp/AfterAddSecurity.dart';
import 'package:sp/Choose.dart';
// Security Maintenance
class security extends StatefulWidget {
  @override
  security_M createState() => security_M();
}

class security_M extends State<security> {
  var myInitialItem1;
  List<String> myItems1 = ['August Wi-Fi Smart Lock',
    'Ultraloq U-Bolt Pro + Wi-Fi Bridge',
    'Kwikset Halo Touch Fingerprint Smart Lock',
  'Array By Hampton Connected Door Lock','Lockly Vision Doorbell Camera Smart Lock'
  ,'SimpliSafe Smart Lock'];
  var myInitialItem2;
  List<String> myItems2 = ['1','2','3','4','5','6','7'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Add Security Maintenance'),
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
                      'Select Door Lock Security',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                Container(
                    height: 50,
                    width: 1000,
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
                      'Select The Quantity',
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