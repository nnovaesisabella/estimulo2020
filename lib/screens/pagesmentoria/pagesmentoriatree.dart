import 'package:flutter/material.dart';

class FeedMentoriaTree extends StatefulWidget {
  @override
  _FeedMentoriaTreeState createState() => _FeedMentoriaTreeState();
}

class _FeedMentoriaTreeState extends State<FeedMentoriaTree> {
  @override
  void showAlertDialog1(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            height: 210,
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Enviado',
                    style: TextStyle(
                      color: Colors.blueAccent[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Text(
                      'Analisaremos suas fragilidades e terá uma previsão de 7(sete) dias para análise. Enviaremos um e-mail, até o prazo previsto.'),
                ),
                Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.only(left: 140, bottom: 20, top: 30),
                  decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/pagementoria');
                    },
                  ),
                )
              ],
            ),
          ));
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 70,
            leading: IconButton(
              padding: EdgeInsets.only(top: 20),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.popAndPushNamed(context, '/pagementoria');
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.blue[700]),
            ),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: <Widget>[
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 60),
                            child: Text(
                              ' Queremos ouvir você',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 180),
                            child: Image.asset(
                              'assets/images/formsmentoria.png',
                              height: 220,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 10, left: 15, right: 150),
                      child: Text(
                        ' Nome dos mentores?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 10, left: 35, right: 20),
                      child: Text(
                        ' Quantos aos mentores, atendeu suas expectativa? (Avalie de 0 à 10) ',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.only(right: 190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "0 à 10",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 10, left: 35, right: 20),
                      child: Text(
                        ' Quanto ao formato da mentoria atendeu as suas expectativas? (Avalie de 0 à 10) ',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.only(right: 190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "0 à 10",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 10, left: 35, right: 20),
                      child: Text(
                        ' Se precisar, fazer alguma alteração em nossa mentoria ou serviços disponíveis '
                        'o que mudaria?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 20, left: 35, right: 20),
                      child: Text(
                        ' Qual problema nossa mentoria ajudou a resolver?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 20, left: 15, right: 90),
                      child: Text(
                        ' Quais mentorias você participou?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 20, left: 35, right: 20),
                      child: Text(
                        ' Quais pontos ainda você notou que precisa melhorar na sua empresa?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 170,
                      margin: EdgeInsets.only(bottom: 45),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38, width: 1),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Escreva sua mensagem",
                            labelStyle: TextStyle(color: Colors.black45),
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      margin: EdgeInsets.only(left: 140, bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        child: Text(
                          'Enviar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          showAlertDialog1(context);
                        },
                      ),
                    )
                  ])))
        ]));
  }
}
