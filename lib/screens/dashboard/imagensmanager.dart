import 'package:flutter/material.dart';

class PicturesManager extends StatefulWidget {
  @override
  _PicturesManagerState createState() => _PicturesManagerState();
}

class _PicturesManagerState extends State<PicturesManager> {
  @override

  // ignore: override_on_non_overriding_member
  void showAlertDelete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 130,
              child: Column(
                children: [
                  Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            ' Excluir',
                            style: TextStyle(color: Colors.red),
                          ))),
                  Divider(),
                  Container(
                      child: FlatButton(
                          onPressed: () {}, child: Text(' Cancelar'))),
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              expandedHeight: 80,
              title: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Imagens',
                  )),
              leading: IconButton(
                padding: EdgeInsets.only(top: 20),
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              flexibleSpace: Container(
                decoration: BoxDecoration(color: Colors.blue[700]),
              ),
            ),
            SliverFillRemaining(
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(15)),
                          margin: EdgeInsets.only(left: 40, top: 50),
                          child: Image.asset(
                            "assets/images/click.png",
                            height: 20,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 170, top: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                           
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 290,
                    margin: EdgeInsets.only(top: 25),
                    child: Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/buffet1.jpg",
                              width: 290,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              margin: EdgeInsets.only(left: 210),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          GestureDetector(
                            onDoubleTap: () {},
                            child: Image.asset(
                              "assets/images/buffet2.jpg",
                              width: 290,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              margin: EdgeInsets.only(left: 210),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Card(
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          GestureDetector(
                            onDoubleTap: () {},
                            child: Image.asset(
                              "assets/images/buffet3.jpg",
                              width: 290,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              margin: EdgeInsets.only(left: 210),
                              child: IconButton(
                                icon: Icon(Icons.more_vert_outlined),
                                onPressed: () {
                                  showAlertDelete(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}
