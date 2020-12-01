import 'package:flutter/material.dart';

class PageInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 30, right: 160),
          child: Center(
            child: Text(
              'Categorias',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 10),
                width: 162,
                height: 242,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                  color: Colors.indigo[400],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      margin: EdgeInsets.only(top: 10),
                      child: Image.asset(
                        'assets/images/trilha.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        ' Trilha de Capitação',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.5,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 100),
                      child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black54,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/trilhaspagehome');
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                width: 162,
                height: 242,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                  color: Colors.cyan,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        'assets/images/forms.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        ' Formulário',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.5,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 20,
                            margin: EdgeInsets.only(
                              top: 15,
                              left: 46,
                            ),
                            child: IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/formspage');
                                }),
                          ),
                          Container(
                              width: 50,
                              margin:
                                  EdgeInsets.only(top: 15, right: 10, left: 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.double_arrow,
                                  color: Colors.black54,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/pagepolitica');
                                },
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, bottom: 10),
                width: 162,
                height: 242,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                  color: Colors.pink[300],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        'assets/images/mentoria.png',
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Semestre Mentoria',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.5,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(top: 15, left: 100),
                      child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black54,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/pagementoria');
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                width: 162,
                height: 242,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                  color: Colors.teal[600],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 130,
                      margin: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        'assets/images/project.png',
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only( top: 8),
                      child: Text(
                        'Projeto em ação',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.5,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    
                     Container(
                      margin: EdgeInsets.only(top: 10, left: 100),
                      child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black54,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/dash');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
      drawer: Drawer(
          elevation: 20,
          child: ListView(children: <Widget>[
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
          ])),
    );
  }
}
