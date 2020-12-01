import 'package:flutter/material.dart';

class MaterialImportar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 80,
            title: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Materiais',
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
                  child: Column(children: <Widget>[
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.only(top: 50, right: 210),
                child: Image.asset(
                  "assets/images/download.png",
                  height: 20,
                )),
            Container(
              margin: EdgeInsets.only(left: 10, top: 40),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                   
                   height: 70,
                    width: 210,
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    child: Text(
                      ' Como vender online',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.download_sharp,
                        color: Colors.blueAccent[700],
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 160,
                    margin: EdgeInsets.only( top: 10, left: 15),
                    child: Text(
                      ' Técnicas nas Redes Sociais',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.download_sharp,
                        color: Colors.blueAccent[700],
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 160,
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    child: Text(
                      ' RH de sucesso',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.download_sharp,
                        color: Colors.blueAccent[700],
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ])))
        ]));
  }
}
