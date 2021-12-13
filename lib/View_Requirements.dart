import 'package:flutter/material.dart';
// View Requirements
class QuoteList extends StatefulWidget {
  @override
  L createState() => L();
}

class L extends State<QuoteList > {
  List<String> quotes = ['-------------------------------------','City: Islamabad','Rooms: 6','Size: 800','City: Multan','Rooms: 2','Size: 600','City: Karachi','Rooms: 7','Size: 1200','City: Faisalabad','Rooms: 4','Size: 1000','City: Hyderabad','Rooms: 2','Size: 600','City: Peshawar','Rooms: 3','Size: 600','City: Karachi','Rooms: 5','Size: 800'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('View Requirements'),
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