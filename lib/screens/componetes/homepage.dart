import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
      ),
      body: Column(
        children: <Widget>[
          Stack(children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: 320,
                child: Image.asset(
                  "assets/images/homeimage.jpg",
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.modulate,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            Positioned(
                child: Container(
              height: 320,
              color: Colors.black.withOpacity(0.5),
            )),
            Positioned(
                child: Container(
                    height: 320,
                    child: Center(
                      child: Text(
                        'Bem- vindo !',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'AbrilFatface-Regular',
                          color: Colors.white,
                        ),
                      ),
                    ))),
          ]),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 70),
            padding: EdgeInsets.only(top: 50, bottom: 10),
            child: Text(
              'A VALUE, tem o objetivo de auxiliar sua empresa a continuar avançar com seus negócios!',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: 280,
            height: 40,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox.expand(
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/pageinitial');
                    },
                    child: Text(
                      "Acessar",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ))),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 20,
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[700], Colors.cyan[200]]),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 30),
                        child: Image.asset(
                          'assets/images/logotext.png',
                          width: 110,
                        ),
                      ),
                    ),
                    Row(
                      children: [
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
                        Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, bottom: 5, left: 12),
                              child: Text(
                                'JULIANA SOUZA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('Buffet  Gateau',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[900],
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.blue[900]),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/pageinitial');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.edit_outlined),
                title: Text(
                  'Editar Perfil',
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/perfiledit');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                  leading: Icon(Icons.lock_outline),
                  title: Text(
                    'Segurança e Privacidade',
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/privado');
                  }),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                ),
                title: Text(
                  'Mensagens',
                  style: TextStyle(color: Colors.black45),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/menssagem');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.support_agent),
                title: Text(
                  'Suporte',
                  style: TextStyle(color: Colors.black45),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/suporte');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.first_page_sharp, color: Colors.red),
                title: Text(
                  'Sair',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/homelogin');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
