import 'package:flutter/material.dart';

class MotivacaoPage extends StatefulWidget {
  @override
  _MotivacaoPageState createState() => _MotivacaoPageState();
}

class _MotivacaoPageState extends State<MotivacaoPage> {
  Fornecedor selecionarValor;
  List<Fornecedor> fornecedores = [
    Fornecedor("Nenhum"),
    Fornecedor("1"),
    Fornecedor("2"),
    Fornecedor("3"),
    Fornecedor("4"),
    Fornecedor("5"),
    Fornecedor("6"),
    Fornecedor("7"),
    Fornecedor("8"),
    Fornecedor("9"),
    Fornecedor("10"),
    Fornecedor("Acima de 10"),
  ];
  List<DropdownMenuItem> generateFornecedores(List<Fornecedor> fornecedores) {
    List<DropdownMenuItem> items = [];
    for (var item in fornecedores) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Dedicacao selecionarDedicacao;
  List<Dedicacao> dedicacoes = [
    Dedicacao("Até 10 horas semanais"),
    Dedicacao("Até 20 Horas Semanais"),
    Dedicacao("Até 30 horas semanais"),
    Dedicacao("Até 40 horas semanais"),
    Dedicacao("Acima 40 horas semanais"),
  ];
  List<DropdownMenuItem> generateDedicacoes(List<Dedicacao> dedicacoes) {
    List<DropdownMenuItem> items = [];
    for (var item in dedicacoes) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Opcao selecionarOpcao;
  List<Opcao> opcoes = [
    Opcao("Sim"),
    Opcao("Não"),
  ];
  List<DropdownMenuItem> generateOpcoes(List<Opcao> opcoes) {
    List<DropdownMenuItem> items = [];
    for (var item in opcoes) {
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
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Motivação')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                    EdgeInsets.only(right: 160, left: 10, top: 15, bottom: 10),
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarValor,
                  items: generateFornecedores(fornecedores),
                  onChanged: (item) {
                    setState(() {
                      selecionarValor = item;
                    });
                  },
                ),
              ),
              
              Container(
                margin: EdgeInsets.only( left: 10, right: 10,),
                child: Text(
                  "Qual o tempo de dedicação para o seu negócio?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(right: 160, left: 10, top: 15, bottom: 10),
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                   underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarDedicacao,
                  items: generateDedicacoes(dedicacoes),
                  onChanged: (item) {
                    setState(() {
                      selecionarDedicacao = item;
                    });
                  },
                ),
              ),
              
              Container(
                margin: EdgeInsets.only( left: 10, right: 10),
                child: Text(
                  "Você estaria disposto no mínimo 3(três) horas semanais para participar deste processo nas ações de acessoramento?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(right: 160, left: 10, top: 15, bottom: 10),
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50],
                ),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarOpcao,
                  items: generateOpcoes(opcoes),
                  onChanged: (item) {
                    setState(() {
                      selecionarOpcao = item;
                    });
                  },
                ),
              ),
              
              Container(
                 margin: EdgeInsets.only( left: 10, right: 10),
                child: Text(
                  "Porque eu quero participar deste programa?Justifique sua resposta.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              
              Container(
                height: 40,
                margin: EdgeInsets.only( left: 10, right: 10, top: 10),
                child: new ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 300.0,
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(bottom: 2, top: 100, right: 10, left: 210),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  color: Colors.indigo[400],
                  onPressed: () {
                    Navigator.pushNamed(context, '/formspage');
                  },
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
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

class Fornecedor {
  String name;
  Fornecedor(this.name);
}

class Dedicacao {
  String name;
  Dedicacao(this.name);
}

class Opcao {
  String name;
  Opcao(this.name);
}
