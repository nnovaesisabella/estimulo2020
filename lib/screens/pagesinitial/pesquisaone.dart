import 'package:flutter/material.dart';

class PesquisaPageOne extends StatefulWidget {
  @override
  _PesquisaPageOneState createState() => _PesquisaPageOneState();
}

class _PesquisaPageOneState extends State<PesquisaPageOne> {
  Filial selecionarFilial;
  List<Filial> filiais = [
    Filial("Não"),
    Filial("1"),
    Filial("2"),
    Filial("Mais de 2"),
  ];
  List<DropdownMenuItem> generateFiliais(List<Filial> filiais) {
    List<DropdownMenuItem> items = [];
    for (var item in filiais) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Franquia selecionarFranquia;
  List<Franquia> franquias = [
    Franquia("Sim"),
    Franquia("Não"),
  ];
  List<DropdownMenuItem> generateFranquias(List<Franquia> franquias) {
    List<DropdownMenuItem> items = [];
    for (var item in franquias) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Apoio selecionarApoio;
  List<Apoio> apoios = [
    Apoio("Sim"),
    Apoio("Não"),
  ];
  List<DropdownMenuItem> generateApoios(List<Apoio> apoios) {
    List<DropdownMenuItem> items = [];
    for (var item in apoios) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Contato selecionarContato;
  List<Contato> contatos = [
    Contato("Nenhum"),
    Contato("1 a 2"),
    Contato("3 a 4"),
    Contato("Mais de 4"),
  ];
  List<DropdownMenuItem> generateContatos(List<Contato> contatos) {
    List<DropdownMenuItem> items = [];
    for (var item in contatos) {
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
          backgroundColor: Colors.blue[700],
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Pesquisa')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 5, bottom: 10),
                child: Text(
                  " O seu negócio possui filiais? Se sim, quantas estavam operando antes da pandemia e quantas atualmente?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 160, bottom: 5),
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarFilial,
                  items: generateFiliais(filiais),
                  onChanged: (item) {
                    setState(() {
                      selecionarFilial = item;
                    });
                  },
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
                child: Text(
                  " Se possuir filiais, quais cidades estão localizadas?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                height: 40,
                padding:
                    EdgeInsets.only(bottom: 0, top: 5, right: 20, left: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                     
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Text(
                  " A empresa faz parte de uma Franquia?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 160, bottom: 5),
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarFranquia,
                  items: generateFranquias(franquias),
                  onChanged: (item) {
                    setState(() {
                      selecionarFranquia = item;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  " Se a resposta acima for sim, a franquia concedeu algum apoio durante a pandemia?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 160, bottom: 15, top: 10),
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarApoio,
                  items: generateApoios(apoios),
                  onChanged: (item) {
                    setState(() {
                      selecionarApoio = item;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  "Durante a pandemia, você precisou encerrar contato com quantos fornecedores?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                 margin:
                    EdgeInsets.only(left: 10, right: 160, bottom: 15, top: 10),
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  isExpanded: true,
                   underline: Container(color: Colors.transparent),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarContato,
                  items: generateContatos(contatos),
                  onChanged: (item) {
                    setState(() {
                      selecionarContato = item;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(top: 40, right: 30, ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class Filial {
  String name;
  Filial(this.name);
}

class Franquia {
  String name;
  Franquia(this.name);
}

class Apoio {
  String name;
  Apoio(this.name);
}

class Contato {
  String name;
  Contato(this.name);
}
