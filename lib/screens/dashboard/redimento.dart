import 'dart:ui';

import 'package:flutter/material.dart';

class Balancete extends StatefulWidget {
  @override
  _BalanceteState createState() => _BalanceteState();
}

class _BalanceteState extends State<Balancete> {
  @override
  // ignore: override_on_non_overriding_member
  void showAlertDelete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 180,
              child: Column(
                children: [
                  Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            ' Excluir',
                            style: TextStyle(color: Colors.red),
                          ))),
                  Divider(),
                  Container(
                      height: 40,
                      child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            ' Editar',
                            style: TextStyle(
                              color: Colors.blueAccent[700],
                            ),
                          ))),
                  Divider(),
                  Container(
                      child: FlatButton(
                          onPressed: () {}, child: Text(' Cancelar'))),
                ],
              ),
            ),
          );
        });
  }

  void showAlertAddBol(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Text(
                              ' Balancete Mensal',
                              style: TextStyle(
                                color: Colors.blueAccent[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.teal[300]),
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.save,
                                size: 30,
                                color: Colors.black54,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 120, top: 15),
                      child: Text(
                        'Mês Referente',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 163,
                      margin: EdgeInsets.only(top: 10, right: 60),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, right: 140),
                                width: 60,
                                child: Text(
                                  ' Valor',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 113,
                                margin: EdgeInsets.only(
                                    top: 10, right: 110, left: 10, bottom: 15),
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey[50],
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(top: -17.5),
                                    border: InputBorder.none,
                                    hintText: "",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 140),
                      width: 60,
                      child: Text(
                        ' Data',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 113,
                      margin: EdgeInsets.only(
                          top: 10, right: 110, left: 10, bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          hintText: "",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(right: 120),
                      width: 90,
                      height: 30,
                      child: Text(
                        ' Observações',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                           right: 20, left: 20, bottom: 30),
                      width: 230,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black45, width: 1),
                        color: Colors.grey[50],
                        
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                       constraints: BoxConstraints(
                    maxHeight: 300.0,
                  ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

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
                  'Redimento Mensal',
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
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[200],
                                borderRadius: BorderRadius.circular(15)),
                            margin: EdgeInsets.only(left: 40, top: 50),
                            child: Image.asset("assets/images/money.png")),
                        Container(
                          margin: EdgeInsets.only(left: 170),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              showAlertAddBol(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 80),
                    child: Text(
                      ' Histórico Redimento Mensal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Junho',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/07/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 12912,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Maio',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/06/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 7910,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Abril',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/05/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 16912,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Março',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/04/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 20902,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Fevereiro',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/03/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 8912,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                ' Janeiro',
                                style: TextStyle(
                                  color: Colors.blueAccent[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                ' 10/02/2020',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 170),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
                              ),
                              child: Text(' R\$ 6932,18'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.grey[350],
                    width: 310,
                    height: 1,
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
