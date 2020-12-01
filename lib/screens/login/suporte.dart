import 'package:flutter/material.dart';

class Suporte extends StatefulWidget {
  @override
  _SuporteState createState() => _SuporteState();
}


class _SuporteState extends State<Suporte> {
  @override
  // ignore: override_on_non_overriding_member
  void showAlertDialog1(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: 250,
              height: 250,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.teal,
                      size: 90,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 35),
                    width: 220,
                    child: Text(
                      "Sua mensagem será encaminhada ao suporte, em breve entraremos em contato.",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.indigo[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/suporte');
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 120,
            title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Suporte',
                )),
            leading: IconButton(
              padding: EdgeInsets.only(top: 20),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
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
                  margin: EdgeInsets.only(right: 120, top: 40),
                  child: Text('Fale com a gente.',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, right: 10),
                  width: 280,
                  height: 35,
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      labelText: 'Nome  *',
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, right: 10),
                  width: 280,
                  height: 35,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                   
                    decoration: InputDecoration(
                      labelText: 'Telefone' ' *',
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, right: 10),
                  width: 280,
                  height: 35,
                  child: TextFormField(
                  
                    decoration: InputDecoration(
                      labelText: 'CNPJ*',
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 10),
                  width: 280,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black45, width: 1),
                    color: Colors.grey[50],
                  ),
                  child: TextField(
                   
                    decoration: InputDecoration(
                        labelText: "Escreva sua mensagem",
                        labelStyle: TextStyle(color: Colors.black45),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 30,
                    left: 140,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigo[400],
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
          )
        ]));
  }
}
