import 'package:flutter/material.dart';

class PesquisaPage extends StatefulWidget {
  @override
  _PesquisaPageState createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  Medida selecionarMedida;
  List<Medida> medidas = [
    Medida("Sim"),
    Medida("Não"),
    Medida("Não tenho conhecimento"),
  ];
  List<DropdownMenuItem> generateMedidas(List<Medida> medidas) {
    List<DropdownMenuItem> items = [];
    for (var item in medidas) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Emprestimo selecionarEmprestimo;
  List<Emprestimo> emprestimos = [
    Emprestimo("Sim"),
    Emprestimo("Não"),
    Emprestimo("Não tenho conhecimento"),
  ];
  List<DropdownMenuItem> generateEmprestimos(List<Emprestimo> emprestimos) {
    List<DropdownMenuItem> items = [];
    for (var item in emprestimos) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Demicao selecionarDemicao;
  List<Demicao> demicoes = [
    Demicao("Nenhum"),
    Demicao("1 a 3"),
    Demicao("4 a 6"),
    Demicao("7 a 9"),
    Demicao("Mais de 10"),
  ];
  List<DropdownMenuItem> generateDemicoes(List<Demicao> demicoes) {
    List<DropdownMenuItem> items = [];
    for (var item in demicoes) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  Faturamento selecionarFaturamento;
  List<Faturamento> faturamentos = [
    Faturamento("Não teve redução"),
    Faturamento("1% a 20%"),
    Faturamento("21% a 40%"),
    Faturamento("41% a 60%"),
    Faturamento("Mais de 60%"),
    Faturamento("Não tenho essa informação"),
  ];
  List<DropdownMenuItem> generateFaturamentos(List<Faturamento> faturamentos) {
    List<DropdownMenuItem> items = [];
    for (var item in faturamentos) {
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
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          backgroundColor: Colors.blue[700],
          title: Text('Pesquisa')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "A sua empresa se beneficiou do programa emergencial de manutenção do emprego(Medida Provisãoria 936)?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150, bottom: 10),
                child: DropdownButton(
                  underline: Container(color: Colors.transparent),
                  isExpanded: true,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarMedida,
                  items: generateMedidas(medidas),
                  onChanged: (item) {
                    setState(() {
                      selecionarMedida = item;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "A empresa recebeu algum empréstimo dos fundos públicos destinados ao socorro de pequenas e médias empresas afetadas pela Covid-19?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarEmprestimo,
                  items: generateEmprestimos(emprestimos),
                  onChanged: (item) {
                    setState(() {
                      selecionarEmprestimo = item;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                child: Text(
                  "Se você respondeu sim a pergunta acima, informe quais linhas de empréstimos acessou e quais os valores totais dos empréstimos recebidos?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),

              Container(
                height: 35,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: new ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 300.0,
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: ' Resposta',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
             
              Container(
                margin: EdgeInsets.only( top: 10, bottom: 10, left: 10),

                child: Text(
                  " Durante a pandemia, quantos fucionários foram demitidos?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[50],
                ),
                margin: EdgeInsets.only(left: 10, right: 150, bottom: 5),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(color: Colors.transparent),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  value: selecionarDemicao,
                  items: generateDemicoes(demicoes),
                  onChanged: (item) {
                    setState(() {
                      selecionarDemicao = item;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only( top: 10, bottom: 10, left: 10, right: 10),
                child: Text(
                  "Durante a pandemia, qual foi o percentual de redução se seu faturamento mensal?",
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
                  value: selecionarFaturamento,
                  items: generateFaturamentos(faturamentos),
                  onChanged: (item) {
                    setState(() {
                      selecionarFaturamento = item;
                    });
                  },
                ),
              ),
             Container(
                  margin: EdgeInsets.only( right: 20 , left: 190,),
                  width: 113,
                  height: 35,
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
                      Navigator.pushNamed(context, '/pesquisapage1');
                    },
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

class Medida {
  String name;
  Medida(this.name);
}

class Emprestimo {
  String name;
  Emprestimo(this.name);
}

class Demicao {
  String name;
  Demicao(this.name);
}

class Faturamento {
  String name;
  Faturamento(this.name);
}
