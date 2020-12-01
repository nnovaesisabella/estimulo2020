import 'package:flutter/material.dart';

class InfoEmpresa extends StatefulWidget {
  @override
  _InfoEmpresaState createState() => _InfoEmpresaState();
}

class _InfoEmpresaState extends State<InfoEmpresa> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('Informações da Empresa'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 40,
                margin: EdgeInsets.only(
                  right: 10,
                  left: 10,
                  top: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'Razão Social *',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: 10, left: 10, top: 15, bottom: 10),
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey[50],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        labelText: ' CNPJ *',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey[50],
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        labelText: ' Idade *',
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 40,
                margin:
                    EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'Endereço comercial *',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.only(right: 100, left: 10, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'Telefone comercial *',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(right: 10, left: 10, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'E-mail *',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(right: 10, left: 10, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'Site da empresa / rede social *',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Divider(
                  color: Colors.grey[350],
                ),
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 140),
                      child: Text(
                        ' O negócio é familiar ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  Container(
                    height: 30,
                    margin: EdgeInsets.only(
                      right: 120,
                    ),
                    child: RadioListTile(
                        title: Text(
                          'Sim',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue[900],
                        onChanged: (val) {
                          setSelectedRadio(val);
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 120,
                    ),
                    child: RadioListTile(
                        title: Text(
                          'Não',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue[900],
                        onChanged: (val) {
                          setSelectedRadio(val);
                        }),
                  ),
                  Divider(
                    color: Colors.grey[350],
                  ),
                  Container(
                    width: 113,
                    height: 35,
                    margin: EdgeInsets.only( top: 40, left: 140),
                    decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FlatButton(
                      child: Text(
                        ' Próximo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/infoempresa1');
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
