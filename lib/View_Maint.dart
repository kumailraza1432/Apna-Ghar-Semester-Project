import 'package:flutter/material.dart';
import 'package:sp/Home_Maintenance.dart';
// View Maintenables
class V extends StatefulWidget {
  @override
  L createState() => L();
}

class L extends State<V > {
  List<String> quotes = ['-------------------------------------','Security: August Wi-Fi Smart Lock','2','Paint: Nippon Paint','Color: Babouche','Quantity: 4','Security: Ultraloq U-Bolt Pro + Wi-Fi Bridge','Quantity: 4','Paint: Sherwin-Williams Cashmere','Quantity: 1','Color: Urbane Bronze'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('View Maintainable Items'),
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
        body: Center(child:SingleChildScrollView(child: Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quotes.map((e){
            return Container(margin: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.white)),
                child:Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child:Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 30),)));
          }).toList(),
        )))
    );
  }
}