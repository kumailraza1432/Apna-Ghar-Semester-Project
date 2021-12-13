import 'package:flutter/material.dart';
import 'package:sp/AfterAddRequirementSaveScreen.dart';
import 'package:sp/Classes/User.dart';
import 'package:sp/User_Req.dart';
// Add Requirement
class Add_Req extends StatefulWidget {
  @override
  AddR createState() => AddR();
}

class AddR extends State<Add_Req> {
  var myInitialItem1;
  List<String> myItems1 = ['Islamabad','Karachi','Lahore','Multan','Peshawar','Hyderabad','Faisalabad'];
  var myInitialItem2;
  List<String> myItems2 = ['1','2','3','4','5','6','7'];
  var myInitialItem3;
  List<String> myItems3 = ['600','800','1000','1200','1500'];


  User user = User();
  @override
  Widget build(BuildContext context) {
    Map? m = ModalRoute.of(context)?.settings.arguments as Map? ;
    user = m!["user"];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Add Requirements Menu'),
          leading: FlatButton(
            textColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => User_Req())
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
                  'Select City Name',
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
                      'Select Number of Rooms',
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
                      'Select Size of the Plot',
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
                      onPressed: () async{
                        await user.AddReq(myInitialItem1, myInitialItem2, myInitialItem3);
                        Navigator.pushNamed(context, "/AfterAddRequirementSaveScreen");
                      },
                    )
                ),
              ],
            )
        )
    );
  }
}