import 'package:flutter/material.dart';

class PerfilEdit extends StatefulWidget {
  @override
  _PerfilEditState createState() => _PerfilEditState();
}

class _PerfilEditState extends State<PerfilEdit> {
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
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Trocar a imagem.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
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
                              Navigator.pushNamed(context, '/homelogin');
                            },
                            child: Text(
                              "Upload",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
                Container(
                  width: 135,
                  height: 35,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/homelogin');
                      },
                      child: Text(
                        "Remover",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ]),
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
                  'Editar Perfil',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ]),
            ),
          ),
          Column(children: [
            Row(children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20, left: 30),
                child: Column(children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/avatar.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Foto'),
                  ),
                ]),
              ),
              Container(
                width: 80,
                height: 25,
                margin: EdgeInsets.only(top: 30, left: 20),
                decoration: BoxDecoration(
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  child: Text(
                    'Alterar',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
              ),
            ]),
            Container(
              child: Text(
                "Nome Completo",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(
                top: 50,
                bottom: 5,
                right: 190,
              ),
            ),
            Container(
              width: 316,
              height: 30,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 1,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey[300], width: 0.5),
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: -17.5),
                  border: InputBorder.none,
                  hintText: "Juliana Souza",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(top: 20, bottom: 5, right: 260),
            ),
            Container(
              width: 316,
              height: 30,
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
                  hintText: "juliana.chaves@buffetgateau.com.br",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: Text(
                "CNPJ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(top: 20, right: 260),
            ),
            Container(
              width: 316,
              height: 30,
              margin: EdgeInsets.only(top: 5, bottom: 20),
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
                  hintText: "16.501.196/0001-56",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: Text(
                "Empresa",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(right: 240),
              margin: EdgeInsets.only(bottom: 5),
            ),
            Container(
              width: 316,
              height: 30,
              margin: EdgeInsets.only(bottom: 20),
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
                  hintText: "Buffet Gateau",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
                onChanged: (value) {},
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 80,
                height: 30,
                margin: EdgeInsets.only(top: 60, right: 25),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ]),
        ]));
  }
}
