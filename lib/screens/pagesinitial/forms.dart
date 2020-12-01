import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  @override
  _FormsPageState createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String

  @override
  // ignore: override_on_non_overriding_member
  void alertValidacao(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: 270,
              height: 280,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Image.asset('assets/images/happy.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100, left: 10),
                    child: Text(
                      'Agradecemos, por preenche todo o formulário. É válido lembrar, que não garante sua '
                      'participação na mentoria. Iremos avaliar e em  torno de 15 (quinze) dias, entraremos em contato.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 113,
                    height: 35,
                    margin: EdgeInsets.only(top: 230, left: 105),
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pageinitial');
                      },
                      child: Text(
                        'Close',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[700],
            ),
            child: Center(
              child: Container(
                height: 50,
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  ' Selecione as questões',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, left: 95),
                child: Image.asset(
                  'assets/images/formslogo.png',
                  height: 110,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 150, left: 60),
                  width: 250,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  )),
              Container(
                margin: EdgeInsets.only(top: 150, left: 60),
                width: 75,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal[700],
                ),
                child: Text(
                  '15%',
                  textDirection: TextDirection.rtl,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 190, left: 40),
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/infoparticipantes0');
                  },
                  child: Text(
                    ' Informações dos Participantes',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 270, left: 40),
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/infoempresa');
                  },
                  child: Text(
                    ' Informações da Empresa',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 350, left: 40),
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pesquisapage');
                  },
                  child: Text(
                    ' Pesquisa antes da crise',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 430, left: 40),
                width: 280,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[100],
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/motivacaopage');
                  },
                  child: Text(
                    ' Motivação',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 530, left: 32),
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo[400],
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pagepolitica');
                      },
                      child: Text(
                        'Voltar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 530, left: 95),
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo[400],
                    ),
                    child: FlatButton(
                      onPressed: () {
                        alertValidacao(context);
                      },
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ]));
  }
}
