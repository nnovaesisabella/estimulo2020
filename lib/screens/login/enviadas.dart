import 'package:flutter/material.dart';

class BoxEnviadas extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 120,
            title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Adriana Paiva',
                )),
            leading: IconButton(
              padding: EdgeInsets.only(top: 20),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue[700], Colors.cyan[200]]),
              ),
            ),
          ),
           SliverFillRemaining( 
             child:Column(
               children: <Widget>[
                 Padding(
                   padding: null),
               ],
             ),
           )
          
          
          
          ] ));
      
    
  }
}