import 'package:flutter/material.dart';

class PrivaCity extends StatefulWidget {
  @override
  PrivaCityState createState() => PrivaCityState();
}

class PrivaCityState extends State<PrivaCity> {
  bool _checkboxValue = false;

  @override
  // ignore: override_on_non_overriding_member
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
                width: MediaQuery.of(context).size.width / 0.9,
                height: MediaQuery.of(context).size.width / 2.5,
                color: Colors.white,
                child: Column(children: [
                  Container(
                    child: Text(
                      'Deseja excluir sua conta?',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      width: 135,
                      height: 35,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox.expand(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/homelogin');
                              },
                              child: Text(
                                'Sim',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 135,
                      height: 35,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.indigo[400],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox.expand(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pop(context, '/privado');
                              },
                              child: Text(
                                'Não',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                ])),
          );
        });
  }

  void _showAlertSessoes(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: 150,
              height: 300,
              child: Column(
                children: [
                  Container(
                      child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.grey[600],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Nova Lima'),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30, top: 3),
                            child: Text(
                              'Online',
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 15, bottom: 9),
                    width: 200,
                    height: 1,
                    color: Colors.black54,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.location_on,
                            color: Colors.grey[600],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('Belo Horizonte'),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30, top: 3),
                              child: Text(
                                'Há 22 horas',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 15, bottom: 9),
                    width: 200,
                    height: 1,
                    color: Colors.black54,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.location_on,
                            color: Colors.grey[600],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text('Belo Horizonte'),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 60, top: 3),
                              child: Text(
                                'Ontem',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue[700], Colors.cyan[200]]),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Row(children: [
                Container(
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
                    child: Text(
                  'Privacidade e Segurança',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ]),
            ),
          ),
           Container(
          child: Text(
            "Senha Atual",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.only(
            top: 50,
            bottom: 5,
            right: 230,
          ),
        ),
        Container(
          width: 260,
          height: 30,
          margin: EdgeInsets.only(right: 50),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(29),
            border: Border.all(color: Colors.grey[300], width: 0.5),
          ),
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
          child: Text(
            "Nova Senha",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.only(top: 20, bottom: 5, right: 230),
        ),
        Container(
          width: 260,
          height: 30,
          margin: EdgeInsets.only(right: 50),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(29),
            border: Border.all(color: Colors.grey[300], width: 0.5),
          ),
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
          child: Text(
            "Confirmar Nova Senha",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.only(top: 20, right: 160),
        ),
        Container(
          width: 260,
          height: 30,
          margin: EdgeInsets.only(top: 5, right: 50),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(29),
            border: Border.all(color: Colors.grey[300], width: 0.5),
          ),
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
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: EdgeInsets.only(right: 65),
            child: FlatButton(
              child: Text(
                'Esqueceu a senha?',
                style: TextStyle(
                    color: Colors.blueAccent[400], fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/restart');
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 80,
            height: 30,
            margin: EdgeInsets.only(top: 10, right: 32),
            decoration: BoxDecoration(
              color: Colors.indigo[400],
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlatButton(
              child: Text(
                'Salvar',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              onPressed: () {},
            ),
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Checkbox(
               
                value: _checkboxValue,
                onChanged: (bool value) {
                  setState(() {
                    _checkboxValue = value;
                  });
                  showAlertDialog(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Excluir conta',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
        Container(
          width: 180,
          height: 30,
          margin: EdgeInsets.only(top: 30, right: 140),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              onPressed: () {
                _showAlertSessoes(context);
              },
              child: Text(
                'Mostrar sessões',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )

        ]
        ),
        );
  }
}
