import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 80,
            title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Agenda Mentoria',
                )),
            leading: IconButton(
              padding: EdgeInsets.only(top: 20),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.blue[700]),
            ),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 420,
                  margin: EdgeInsets.only(top: 20, right: 5, left: 5),
                  child: Image.asset(
                    "assets/images/calendario.png",
                    width: 420,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10, top: 40),
                    width: 320,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10),
                            child: Text(
                              ' Impulsar vendas online',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(' 18/06/2020'),
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric( vertical: 10),
                        child: Text(
                          ' 18:30 ás 20:00 ',
                          style: TextStyle(
                            color: Colors.blueAccent[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ])),
              ],
            ),
          ))
        ]));
  }
}
