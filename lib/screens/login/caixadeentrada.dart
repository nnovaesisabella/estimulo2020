import 'package:flutter/material.dart';

class EntradaBox extends StatelessWidget {
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
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.green[700],
                          radius: 23,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/face.jpg',
                            ),
                            radius: 21,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Adriana Paiva- Finanças',
                          style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 270,
                  margin: EdgeInsets.only(left: 15, top: 40),
                  child: Text(
                    'Prezada, Juliana!\n \n'
                    'Boa tarde! \n'
                    ' \n Gostaria de saber se precisa de alguma ajuda, ou tem dúvida sobre a mentoria .Por gentileza, me envie um feedback é muito importante para nossa evolução.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[350],
                ),
                Container(
                  child: SingleChildScrollView(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        labelText: 'Escreva sua mensagem',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey[350],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.attach_file),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 170,
                        top: 10,
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.indigo[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        child: Text(
                          ' Enviar',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
