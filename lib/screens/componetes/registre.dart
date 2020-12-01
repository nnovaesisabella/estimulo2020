import 'package:estimulo2020/screens/componetes/path_registre.dart';
import 'package:flutter/material.dart';

class Registre extends StatefulWidget {
  @override
  _RegistreState createState() => _RegistreState();
}

class _RegistreState extends State<Registre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                alignment: Alignment.topCenter,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Image.asset(
                          'assets/images/logotext.png',
                          height: 40,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Bem-vindo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.cyan[300],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_a_photo,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 35,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.grey[600],
                            size: 26,
                          ),
                          hintText: "Nome Completo",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 35,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.grey[600],
                            size: 26,
                          ),
                          hintText: "CNPJ",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 35,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.email,
                            color: Colors.grey[600],
                            size: 26,
                          ),
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 35,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey[600],
                            size: 26,
                          ),
                          hintText: "Senha",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 35,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: -17.5),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey[600],
                            size: 26,
                          ),
                          hintText: "Confirmar  Senha",
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      width: 316,
                      height: 40,
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SizedBox.expand(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/homelogin');
                              },
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.blue[700],
                      margin: EdgeInsets.only(top: 59),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back,
                                  color: Colors.orange[200], size: 35),
                              tooltip: 'Voltar',
                              onPressed: () {
                                Navigator.pushNamed(context, '/homelogin');
                              },
                            ),
                          ),
                          Container(
                            child: Text(
                              'Já tem uma conta? Faça o login.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
