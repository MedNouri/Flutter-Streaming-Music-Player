
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
import 'MyPlayerWidget.dart';
import 'imagethumbnail.dart';
typedef void OnError(Exception exception);



const songurl = 'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3';
void main() {
  runApp(new MaterialApp(home: new MyMusicPlayer()));
}

class MyMusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => new _MusicPlayerState();
}

class _MusicPlayerState extends State<MyMusicPlayer> {

  AudioPlayer advancedPlayer = AudioPlayer();



  Widget remoteUrl() {
    return Container(
      child: Column(
        //   mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            ImageSong("assets/images/thumbnail.png"),

        Text(
          'Rihanna',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white),
          textAlign: TextAlign.center,

        ),
        Text(
          'Give me my money ',
           style: TextStyle(fontWeight: FontWeight.normal,
           color: Colors.white),
          textAlign: TextAlign.center,

        ),
        PlayerWidget(url: songurl),

      ]),
    );
  }








  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Duration>.value(
            initialData: Duration(),
            value: advancedPlayer.onAudioPositionChanged),
      ],
      child: DefaultTabController(
        length: 1,
        child: Scaffold(
    body: Center(
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [Colors.black54, Colors.purple])),
    child: remoteUrl(),
    ),
    ),
    ),
      ),
    );
  }
}
