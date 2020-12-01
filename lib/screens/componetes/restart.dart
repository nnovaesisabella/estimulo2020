import 'package:estimulo2020/screens/componetes/homelogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReStart extends StatefulWidget {
  @override
  _ReStartState createState() => _ReStartState();
}

class _ReStartState extends State<ReStart> {
  final emailController = TextEditingController();

  String email;

  @override
  // ignore: override_on_non_overriding_member
  void showAlertDialog(BuildContext context, String email) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 0.9,
              height: MediaQuery.of(context).size.width / 2.5,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 35),
                    child: Text(
                      'Sua senha será enviada para o e-mail, ${emailController.text}',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 216,
                    height: 40,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox.expand(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homelogin');
                            },
                            child: Text(
                              "Confirmar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context, HomeLogin());
              },
            ),
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue[700], Colors.cyan[200]]),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 22, top: 50, right: 65),
              child: Text(
                "Esqueceu a senha?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 22, top: 10, right: 5),
              width: 330,
              child: Text(
                  "Insira o endereço do e-mail cadastrado, para recuperar sua senha.",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto-Light.',
                  )),
            ),
            Center(
              child: Container(
                width: 316,
                height: 40,
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: -17.5),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.email,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.grey[600]),
                  ),
                  validator: (email) {
                    if (email.isEmpty) {
                      return "Informe seu e-mail";
                    }
                    return null;
                  },
                ),
              ),
            ),
            Container(
              width: 316,
              height: 40,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    showAlertDialog(context, email);
                  },
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
