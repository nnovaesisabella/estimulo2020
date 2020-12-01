import 'package:flutter/material.dart';

class PoliticaPage extends StatefulWidget {
  @override
  _PoliticaPageState createState() => _PoliticaPageState();
}

class _PoliticaPageState extends State<PoliticaPage> {
  int selectedRadio;
 

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  // ignore: override_on_non_overriding_member
  void alerTermoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 270,
            height: 410,
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Politica do Sistema de Capacitação',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'O objetivo deste formulário é para a Assessoria e Consultoria do Grupo Ânima entender melhor suas necessidades.\n \n '
                    'Todas as informações preenchidas neste formulário serão tratadas com confidelidade.Em caso de  dúvidas entrar em contato: sara.chaves@una.br. \n \n'
                    'Serão selecionadas somente vinte empresas e o asseoramento terá a duração de três meses. \n \n'
                    'O preenchimento de todas perguntas é obrigatório e deve ser realizado até o dia 28/08/2020.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  width: 110,
                  height: 35,
                  margin: EdgeInsets.only(top: 23, left: 80),
                  decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: FlatButton(
                    child: Text(' Próximo', style: TextStyle( color: Colors.white),),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blue[700],
        body: Column(
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
                  Navigator.pushNamed(context, '/pageinitial');
                },
              ),
            ),
            Container(
              width: 150,
              height: 100,
              child: Image.asset("assets/images/estimulo2020.png"),
            ),
            Stack(children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 250,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  )),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 60,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal[700],
                  )),
            ]),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  height: 469,
                ),
                Container(
                  child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 20, top: 15, bottom: 15),
                          child: Text(
                            'Politica do Sistema de Capacitação',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, bottom: 15),
                          child: Text(
                            'O objetivo deste formulario é realizar um mapeamento para posterior seleção de empresas contempladas no projeto.....',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150, top: 10),
                          child: RaisedButton(
                            color: Colors.indigo[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {
                              alerTermoDialog(context);
                            },
                            child: Text(
                              "Saiba Mais",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 280),
                  width: double.infinity,
                  height: 200,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 65),
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Li a Politica do Sistema de \n Capacitação',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          top: 15,
                        ),
                        child: RadioListTile(
                            title: Text('Li e aceito'),
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue[900],
                            onChanged: (val) {
                              setSelectedRadio(val);
                              Navigator.pushNamed(context, '/formspage');
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: RadioListTile(
                            title: Text('Não / Voltar'),
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Colors.blue[900],
                            onChanged: (val) {
                              setSelectedRadio(val);
                              Navigator.pushNamed(context, '/pageinitial');
                            }),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
