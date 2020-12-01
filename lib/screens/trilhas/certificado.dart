import 'package:flutter/material.dart';

class CertificaTrilha extends StatefulWidget {
  @override
  _CertificaTrilhaState createState() => _CertificaTrilhaState();
}

class _CertificaTrilhaState extends State<CertificaTrilha> {
  @override

  // ignore: override_on_non_overriding_member
  void showAlertDialog1(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            width: 250,
            height: 450,
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 10,
                  color: Colors.grey,
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.only(bottom: 5, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.teal,
                    size: 120,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    ' Sucesso',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'O certificado será enviado para o e-mail cadastrado, confira se está correto e confirme',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Container(
                  width: 160,
                  height: 35,
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SizedBox.expand(
                      child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/trilhaspagehome');
                          },
                          child: Text(
                            "Enviar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'),
                          ))),
                ),
                Container(
                  width: 160,
                  height: 35,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[900], width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SizedBox.expand(
                      child: FlatButton(
                          onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/certificado',
                                ModalRoute.withName('/pageinitial'));
                          },
                          
                          child: Text(
                            "Cancelar",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'),
                          ))),
                ),
              ],
            ),
          ));
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blue[700],
        body: Column(children: [
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
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 21),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              height: 602,
            ),
            Container(
              width: 320,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(
                top: 40,
                left: 25,
                right: 15,
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 172,
                    margin: EdgeInsets.only(left: 5),
                    child: Image.asset(
                      'assets/images/ballon.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        child: Text(
                          ' Parabéns !',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                        ),
                        width: 175,
                        height: 120,
                        child: Text(
                            ' Você concluiu todas as trilhas , caso estiver com dúvidas pode acessar os vídeos quantas '
                            'vezes for necessário todas as trilhas.'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 240),
                child: Image.asset('assets/images/formatura.png'),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 325,
                ),
                child: Text(
                  ' Obter Certificado',
                  style: TextStyle(
                    color: Colors.blueAccent[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(right: 25, left: 25, top: 360),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[50],
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  labelText: 'Nome Completo ',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(right: 25, left: 25, top: 410),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[50],
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  labelText: 'E-mail',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(right: 25, left: 25, top: 460),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey[50],
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  labelText: 'CNPJ',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: 160,
              height: 35,
              margin: EdgeInsets.only(top: 560, left: 170),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.indigo[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox.expand(
                  child: FlatButton(
                      onPressed: () {
                        showAlertDialog1(context);
                      },
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ))),
            ),
          ]),
        ]));
  }
}

