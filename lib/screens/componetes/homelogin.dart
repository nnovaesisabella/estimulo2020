import 'package:estimulo2020/screens/componetes/restart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 60, bottom: 25),
            child: Image.asset(
              "assets/images/logotext.png",
              height: 40,
            ),
          ),
          Image.asset(
            "assets/images/loginimage.png",
            width: 230,
          ),
          Container(
            width: 316,
            height: 40,
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
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
                  size: 20,
                ),
                hintText: "E-mail",
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
              onChanged: (value) {},
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
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  hintText: 'Senha',
                  contentPadding: EdgeInsets.only(top: -1.5),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[600],
                  )),
              onChanged: (value) {},
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 1.0, right: 33.0, bottom: 35),
              child: Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ReStart();
                      },
                    ));
                  },
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Colors.orange[200],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 16,
                    ),
                  ),
                ),
              )),
          Container(
            width: 316,
            height: 40,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.orange[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox.expand(
                child: FlatButton(
                    onPressed: () {
                     Navigator.pushNamed(context, '/homepage');

                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
          Row(children: [
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Text("Não tem uma conta? Cadastra-se",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: IconButton(
                icon: Icon(Icons.arrow_forward,
                    color: Colors.orange[200], size: 35),
                tooltip: 'Próximo',
                onPressed: () {
                  Navigator.pushNamed(context, '/registre');
                },
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
