import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrilhasPageHome extends StatefulWidget {
  @override
  _TrilhasPageHomeState createState() => _TrilhasPageHomeState();
}

class _TrilhasPageHomeState extends State<TrilhasPageHome> {
  String videoURL = "https://youtu.be/SvWmLfMc6Dk";
  String videoURL2 = "https://youtu.be/zbnm-_8t3fs";
  String videoURL3 = "https://youtu.be/8rLQDldoMJ0";
  String videoURL4 = "https://youtu.be/TUW5HOHqDeQ";

  YoutubePlayerController _controller;
  YoutubePlayerController _controller2;
  YoutubePlayerController _controller3;
  YoutubePlayerController _controller4;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));
    _controller2 = YoutubePlayerController(
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL2));
    _controller3 = YoutubePlayerController(
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL3));

    _controller4 = YoutubePlayerController(
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ),
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL4));

    super.initState();
  }

  // ignore: non_constant_identifier_names
  Container MeusVideos(_controller, String titulo) {
    return Container(
        margin: EdgeInsets.only(left: 15),
        width: 280.0,
        height: 150,
        child: Card(
          child: Wrap(children: <Widget>[
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            ListTile(
              title: Center(
                child: Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.popAndPushNamed(context, '/pageinitial'),
        ),
        title: Text("Trilhas"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15),
            height: 130,
            child: Image.asset(
              'assets/images/youtube.png',
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(right: 25, left: 50, top: 30, bottom: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[350], width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: -17.5, left: 20),
                border: InputBorder.none,
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                    size: 16,
                  ),
                ),
                hintText: "Pesquisar vídeo",
                hintStyle: TextStyle(color: Colors.grey[600]),
              ),
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                MeusVideos(_controller, " Planejamento Financeiro"),
                MeusVideos(_controller2, "Como vender durante a pandemia"),
                MeusVideos(_controller3, " Tecnologia e Inovação"),
                MeusVideos(_controller4, "Gestão de Pessoas"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: Text(
                    'Terminou as trilhas ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/certificado');
                    },
                    child: Text(
                      'Clique aqui',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
