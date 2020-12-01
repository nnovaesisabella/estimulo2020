import 'package:flutter/material.dart';

class FeedMentoria extends StatefulWidget {
  @override
  _FeedMentoriaState createState() => _FeedMentoriaState();
}

class _FeedMentoriaState extends State<FeedMentoria> {
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
        body: CustomScrollView(
          slivers: [
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
                child: Column(
                  children: <Widget>[
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
                          bottom: 20, top: 10, left: 15, right: 20),
                      child: Text(
                        ' Quais as principais dificuldades enfrentadas?',
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
                          bottom: 15, top: 25, left: 32, right: 20),
                      child: Text(
                        ' Como a mentoria poderia ajudar, para que seu produto ou serviço fosse recuperado?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 280,
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
                          bottom: 15, top: 25, left: 32, right: 20),
                      child: Text(
                        ' Pensou em alguma alternativa digital para seu produto ou serviço? Se sim, qual?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 280,
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
                          bottom: 15, top: 25, left: 32, right: 20),
                      child: Text(
                        ' Qual especialidade de mentoria te auxiliaria de imediato',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 280,
                      height: 40,
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
                          bottom: 15, top: 25, left: 32, right: 20),
                      child: Text(
                        'Qual a satisfação sobre compreensão do programa, gostaria de fazer alguma pergunta?',
                        style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      width: 280,
                      height: 170,
                      margin: EdgeInsets.only(bottom: 60),
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
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
