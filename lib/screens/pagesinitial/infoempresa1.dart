import 'package:flutter/material.dart';

class InfoEmpresa1 extends StatefulWidget {
  @override
  _InfoEmpresa1State createState() => _InfoEmpresa1State();
}

class _InfoEmpresa1State extends State<InfoEmpresa1> {
  bool _checkboxValue = false;
  

  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  Person selecionarValor;
  List<Person> persons = [
    Person("R\$30.000,00 à R\$90.000,00"),
    Person("R\$90.000,00 à R\$150.000,00"),
    Person("R\$150.000,00 à R\$210.000,00"),
    Person("R\$210.000,00 à R\$270.000,00"),
    Person("Acima de R\$270.000,00"),
  ];
  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Setor selecionarSetor;
  List<Setor> setores = [
    Setor("Varejo"),
    Setor("Atacado"),
    Setor("Indústria"),
    Setor("Serviço"),
  ];
  List<DropdownMenuItem> generateSetores(List<Setor> setores) {
    List<DropdownMenuItem> items = [];
    for (var item in setores) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Segmento selecionarSegmento;
  List<Segmento> segmentos = [
    Segmento("Alimentação"),
    Segmento("Beleza"),
    Segmento("Brinquedos"),
    Segmento("Educação"),
    Segmento("Esportes"),
  ];
  List<DropdownMenuItem> generateSegmentos(List<Segmento> segmentos) {
    List<DropdownMenuItem> items = [];
    for (var item in segmentos) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  void showAlertMulti(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Container(
            child: Text(
              ' Selecione as especialidades',
              style: TextStyle(fontSize: 17),
            ),
          ),
          content: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Contabilidade',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'E- commerce',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Financeiro',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Logística/Distribuição',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Marketing / Publicidade',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          ' Marketing Digital',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Produção',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          ' Qualidade',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Recursos Humanos',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Jurídica',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Desenvolvimento de \n Produto/  Design',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Tecnologia da \n Informação',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Moda',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checkboxValue,
                          onChanged: (bool value) {
                            setState(() {
                              _checkboxValue = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'Outros',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 113,
                      height: 35,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: FlatButton(
                        child: Text(
                          ' Salvar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });

  List<DropdownMenuItem> generateEspecialidades(
      List<Especialidade> especialidades) {
    List<DropdownMenuItem> items = [];
    for (var item in especialidades) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[700],
          title: Text('Informações da Empresa')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 70),
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    labelText: 'N° de funcionários antes da crise *',
                    labelStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Divider(
                height: 9,
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                child: Text(
                  " Faixa de faturamento mensal antes da crise?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  value: selecionarValor,
                  items: generateItems(persons),
                  onChanged: (item) {
                    setState(() {
                      selecionarValor = item;
                    });
                  },
                ),
              ),

              Divider(),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                child: Text(
                  " Qual é o setor de atuação da empresa?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarSetor,
                  items: generateSetores(setores),
                  onChanged: (item) {
                    setState(() {
                      selecionarSetor = item;
                    });
                  },
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                child: Text(
                  " Qual é a segmentação de nicho de mercado da empresa?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarSegmento,
                  items: generateSegmentos(segmentos),
                  onChanged: (item) {
                    setState(() {
                      selecionarSegmento = item;
                    });
                  },
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                child: Text(
                  " Quais especialidades acredita necessitar de acessoria? Possível marcar mais de uma opçao:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150),
                child: FlatButton(
                  child: Text(
                    ' Selecione',
                  ),
                  onPressed: () {
                    showAlertMulti(context);
                  },
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(top: 90, right: 30),
                  width: 113,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    child: Text(
                      ' Salvar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/formspage');
                    },
                  ),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}

class Setor {
  String name;
  Setor(this.name);
}

class Segmento {
  String name;
  Segmento(this.name);
}

class Especialidade {
  String name;
  Especialidade(this.name);
}
