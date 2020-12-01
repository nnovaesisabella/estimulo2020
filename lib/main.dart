import 'package:estimulo2020/screens/componetes/homelogin.dart';
import 'package:estimulo2020/screens/componetes/homepage.dart';
import 'package:estimulo2020/screens/componetes/registre.dart';
import 'package:estimulo2020/screens/componetes/restart.dart';
import 'package:estimulo2020/screens/dashboard/calendar.dart';
import 'package:estimulo2020/screens/dashboard/dashboard.dart';
import 'package:estimulo2020/screens/dashboard/imagensmanager.dart';
import 'package:estimulo2020/screens/dashboard/material.dart';
import 'package:estimulo2020/screens/dashboard/redimento.dart';
import 'package:estimulo2020/screens/login/caixadeentrada.dart';
import 'package:estimulo2020/screens/login/enviadas.dart';
import 'package:estimulo2020/screens/login/messenger.dart';
import 'package:estimulo2020/screens/login/perfiledit.dart';
import 'package:estimulo2020/screens/login/privacidade.dart';
import 'package:estimulo2020/screens/login/suporte.dart';
import 'package:estimulo2020/screens/pagesinitial/forms.dart';
import 'package:estimulo2020/screens/pagesinitial/infoempresa.dart';
import 'package:estimulo2020/screens/pagesinitial/infoempresa1.dart';
import 'package:estimulo2020/screens/pagesinitial/infoparticipante.dart';
import 'package:estimulo2020/screens/pagesinitial/motiva%C3%A7%C3%A3o.dart';
import 'package:estimulo2020/screens/pagesinitial/page.dart';
import 'package:estimulo2020/screens/pagesinitial/pagepoliticas.dart';
import 'package:estimulo2020/screens/pagesinitial/pesquisa.dart';
import 'package:estimulo2020/screens/pagesinitial/pesquisaone.dart';
import 'package:estimulo2020/screens/pagesmentoria/homementoria.dart';
import 'package:estimulo2020/screens/pagesmentoria/pagesmentoria.dart';
import 'package:estimulo2020/screens/pagesmentoria/pagesmentoriatree.dart';
import 'package:estimulo2020/screens/pagesmentoria/pagesmentoriatwo.dart';

import 'package:estimulo2020/screens/trilhas/certificado.dart';
import 'package:estimulo2020/screens/trilhas/trilhas.dart';
import 'package:flutter/material.dart';
import 'screens/splashhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Value',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      color: Colors.blue[700],

      routes: {
        "/": (context) => SplashHome(),
        "/homelogin": (context) => HomeLogin(),
        "/restart": (context) => ReStart(),
        "/dash": (context) => ProjectNext(),
        "/registre": (context) => Registre(),
        "/homepage": (context) => HomePage(),
        "/perfiledit": (context) => PerfilEdit(),
        "/privado": (context) => PrivaCity(),
        "/menssagem": (context) => Messenger(),
        "/suporte": (context) => Suporte(),
        "/entrada": (context) => EntradaBox(),
        "/boxenviadas": (context) => BoxEnviadas(),
        "/pageinitial": (context) => PageInitial(),
        "/pagepolitica": (context) => PoliticaPage(),
        "/formspage": (context) => FormsPage(),
        "/infoparticipantes0": (context) => InfoParticipantes(),
        "/infoempresa": (context) => InfoEmpresa(),
        "/infoempresa1": (context) => InfoEmpresa1(),
        "/pesquisapage": (context) => PesquisaPage(),
        "/pesquisapage1": (context) => PesquisaPageOne(),
        "/motivacaopage": (context) => MotivacaoPage(),
        "/trilhaspagehome": (context) => TrilhasPageHome(),
        "/certificado": (context) => CertificaTrilha(),
        "/balancetemensal": (context) => Balancete(),
        "/picture": (context) => PicturesManager(),
        "/materialimport": (context) => MaterialImportar(),
        "/calendar": (context) => Calendar(),
        "/pagementoria": (context) => PageMentoria(),
        "pagesfeedback1": (context) => FeedMentoria(),
        "/pagesfeedback2": (context) => FeedMentoriaTwo(),
        "/pagesfeddback3":(context) => FeedMentoriaTree(),
      },

      //Página inicial Splash
      //Página com rotas nomeadas
    );
  }
}
