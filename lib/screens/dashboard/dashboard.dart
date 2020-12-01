import 'package:flutter/material.dart';

class ProjectNext extends StatefulWidget {
  @override
  _ProjectNextState createState() => _ProjectNextState();
}

class _ProjectNextState extends State<ProjectNext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blue[700],
        body: Column(children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 40, left: 30),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 35),
                child: Image.asset("assets/images/logotext.png"),
                width: 150,
              )
            ],
          ),
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 53),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              height: 570,
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 20),
              width: 280,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyan[600],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, top: 15, left: 15),
                        child: Text(
                          'Total Balancete',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, right: 15),
                          child: Text('Junho')),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      ' R\$ 12912,18',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 110, left: 50),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      ' Junho - 2020',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.date_range,
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 240,
              margin: EdgeInsets.only(top: 160, left: 60),
              child: Image.asset(
                "assets/images/grafics.png",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300, left: 30),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset("assets/images/money.png")),
                  Container(
                    height: 50,
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text(
                      ' Redimento Mensal',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/balancetemensal');
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 370, left: 30),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset(
                        "assets/images/click.png",
                        height: 20,
                      )),
                  Container(
                    height: 50,
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text(
                      ' Imagens',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/picture');
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 440, left: 30),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset("assets/images/download.png")),
                  Container(
                    height: 70,
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text(
                      ' Artigos',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/materialimport');
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 510, left: 30),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset("assets/images/date.png")),
                  Container(
                    height: 70,
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text(
                      ' Agendamento Mentoria',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/calendar');
                      },
                    ),
                  )
                ],
              ),
            ),
          ]),
        ]));
  }
}
