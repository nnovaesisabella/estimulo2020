import 'package:flutter/material.dart';

class PageMentoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue[700], Colors.cyan[200]])),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 40),
                child: IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/pageinitial');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  ' Levantamento Semestral',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AbrilFatface-Regular',
                    letterSpacing: 0.5,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 340,
            width: double.infinity,
            margin: EdgeInsets.only(top: 90, left: 10),
            padding: EdgeInsets.only(right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 80,
                        left: 45,
                      ),
                      height: 250,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    Positioned(
                      top: 28,
                      left: 80,
                      child: Container(
                        child: Image.asset(
                          "assets/images/mentoriabol.png",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 60,
                      child: Container(
                        child: Text(
                          ' Levantamento de \n fragilidades',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 180,
                      child: Container(
                        child: Text(
                          '1',
                          style:
                              TextStyle(fontSize: 140, color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
                      left: 80,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                ' Acessar',
                                style: TextStyle(
                                  color: Colors.orangeAccent[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'pagesfeedback1');
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.orangeAccent[400],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 80,
                        left: 45,
                      ),
                      height: 250,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    Positioned(
                      top: 28,
                      left: 80,
                      child: Container(
                        child: Image.asset(
                          "assets/images/mentoriabol1.png",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 60,
                      child: Container(
                        child: Text(
                          ' Levantamento de \n fragilidades',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 180,
                      child: Container(
                        child: Text(
                          '2',
                          style:
                              TextStyle(fontSize: 140, color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
                      left: 80,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                ' Acessar',
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/pagesfeedback2');
                                },
                                icon: Icon(Icons.arrow_forward),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 80,
                        left: 45,
                      ),
                      height: 250,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    ),
                    Positioned(
                      top: 28,
                      left: 80,
                      child: Container(
                        child: Image.asset(
                          "assets/images/mentoriabol2.png",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 60,
                      child: Container(
                        child: Text(
                          ' Levantamento de \n fragilidades',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 190,
                      child: Container(
                        child: Text(
                          '3',
                          style:
                              TextStyle(fontSize: 140, color: Colors.grey[400]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
                      left: 80,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(' Acessar'),
                            ),
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/pagesfeddback3');
                                },
                                icon: Icon(Icons.arrow_forward),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 450, left: 30),
            child: Text(
              'Quem já recebeu mentoria 2020',
              style: TextStyle(
                fontFamily: ' Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 480),
            width: double.infinity,
            padding: EdgeInsets.only(right: 20),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 80,
                  width: 270,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Image.asset('assets/images/avatfeed.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(
                                    bottom: 5, top: 5, right: 20),
                                child: Text(
                                  'Carolina Araújo',
                                  style: TextStyle(
                                    color: Colors.blueAccent[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Confeitaria e Similiares'),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                          left: 7,
                          right: 10,
                        ),
                        child: Text(
                          ' Meu processo de mentoria, foi sensacional! Agradeço, todos os colaboradores em poucos'
                          ' meses o retorno de todo aprendizado colocado em prática refletiu na vendas da empresa. ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 80,
                  width: 270,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Image.asset('assets/images/avatfeed2.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(
                                    bottom: 5, top: 5, right: 20),
                                child: Text(
                                  'Thiago Antônio',
                                  style: TextStyle(
                                    color: Colors.blueAccent[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Casa de Shows e Similiares'),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                          left: 5,
                          right: 5,
                        ),
                        child: Text(
                          ' Agradeço a todas sessões de mentoria, a minha equipe adquiriu uma a mudança e agilidade para adaptar o novo.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 80,
                  width: 270,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Image.asset('assets/images/avatfeed1.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(
                                    bottom: 5, top: 5, right: 10),
                                child: Text(
                                  ' Marcos Paulo',
                                  style: TextStyle(
                                    color: Colors.blueAccent[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('Moda e Similiares'),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 15,
                          left: 5,
                          right: 10,
                        ),
                        child: Text(
                          ' A atenção e suporte prestado, foi adminirável. Indico a todos os empresários e empreendores.',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}
