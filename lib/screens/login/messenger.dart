import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {

  int _index = 0;
  
  void showAlertMenssage(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 430,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 200),
                      child: IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.black87,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Para',
                          contentPadding: EdgeInsets.only(top: 15),
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Assunto',
                          contentPadding: EdgeInsets.only(top: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 240,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black45, width: 1),
                        color: Colors.grey[50],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: IconButton(
                            icon: Icon(
                              Icons.attach_file,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80, top: 10),
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.indigo[400],
                              borderRadius: BorderRadius.circular(50)),
                          child: FlatButton(
                            child: Text(
                              'Enviar',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/menssagem');
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }


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
                  'Mensagens',
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
              children: [
                TogleDeslize(context),
                
                AnimatedCrossFade(
                  firstChild: MsgEntrada(context), 
                  secondChild: MsgEnviadas(context), 
                  crossFadeState: _index == 0 ? CrossFadeState.showFirst: CrossFadeState.showSecond,
                  duration: Duration(seconds: 0),
                    ),
              ],
            ),
          )
        ]));
  }

  @override
  Widget TogleDeslize(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: 37.0,
          left: 15,
          right: 15,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 0 ? Colors.cyan : Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            ' Caixa de entrada',
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                    _index == 0 ? Colors.white : Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 0 ? Colors.grey[300] : Colors.cyan,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          ' Enviadas',
                          style: TextStyle(
                            fontSize: 16,
                            color: _index == 1 ? Colors.white : Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                    ),
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                  ),
                ),
              ]),
        ));
  }

  Widget MsgEntrada(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Pesquisar mensagens',
                    contentPadding: EdgeInsets.symmetric(vertical: 2))),
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                child: CircleAvatar(
                    backgroundColor: Colors.green[700],
                    radius: 23,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/face.jpg'),
                      radius: 21,
                    )),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 25,
                      right: 90,
                    ),
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'Adriana Paiva -  Finanças',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 255,
                    padding: EdgeInsets.only(top: 10),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/entrada');
                        },
                        child: Text(
                          ' Prezada, Juliana.  \n Boa Tarde! \n Gostaria de saber se precisa de..',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 20),
                    width: 260,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 23,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Text(
                      'VL',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 25,
                      right: 200,
                    ),
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Value',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 255,
                    padding: EdgeInsets.only(top: 10),
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Monitoria agendada dia 29/10/2020, no horário de 19:00 ás 21:00 horas.',
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 20),
                    width: 260,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 110, left: 120),
          width: 150,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(50)),
          child: Row(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    showAlertMenssage(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Escrever',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget MsgEnviadas(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(top: 15),
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Pesquisar mensagens',
                  contentPadding: EdgeInsets.symmetric(vertical: 2))),
        ),
      ),
       Row(
         children: [
           Container(
               margin: EdgeInsets.only(top: 30, right: 100, left: 40),
             child: Text( 
               'Juliana Souza',
               style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold)
             ),
           ),
           Container(
              margin: EdgeInsets.only(top: 30),
          child: Text(' 11:40', style: TextStyle( fontSize:12 ),),
           )

         ],
       ),
       Container(
         margin: EdgeInsets.only(right: 40),
         width: 280,
         child: FlatButton(
           onPressed: (){},
           child: Text('Não poderei comparecer na mentoria, gostaria de cancelar.', 
           style: TextStyle(
             color: Colors.black87,
           ),
           ),
           ),),
            Container(
            margin: EdgeInsets.only(top: 10, right: 20),
            width: 280,
            height: 1,
            color: Colors.grey[350],

            ),
            Row(
              children: [
                Container(
          margin: EdgeInsets.only(top: 30, right: 100, left: 40),
         child: Text( 
           'Juliana Souza',
           style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold)
         ),
       ),

        Container( 
          margin: EdgeInsets.only(top: 30),
          child: Text(' 19 de nov.', style: TextStyle( fontSize:12 ),),
        )
              ],
            ),
       Container(
         margin: EdgeInsets.only(right: 40),
         width: 280,
         child: FlatButton(
           onPressed: (){},
           child: Text('Boa tarde! Ainda não recebi o material de Marketing.', 
           style: TextStyle(
             color: Colors.black87,
           ),
           ),
           ),),
            Container(
            margin: EdgeInsets.only(top: 10, right: 20),
            width: 280,
            height: 1,
            color: Colors.grey[350],

            )
    ]);
  }
}
