// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashs(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splashs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new SecondScreen(),
      image: Image.network(
          "https://www.bhagwankiphotos.com/wp-content/uploads/2021/07/Ram-Dulare-Hanuman-Ji-Latest-Images.jpg"),
      photoSize: 150.0,
      loaderColor: Colors.amber,
      loadingText: Text('Shree Ram'),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("himanshu bhai company me lelo"))),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: Image.network("https://www.bhagwankiphotos.com/wp-content/uploads/2021/07/Ram-Dulare-Hanuman-Ji-Latest-Images.jpg")
        //         as ImageProvider,
        //   ),
        // ),
        child: ElevatedButton(
          child: Text("play audio"),
          onPressed: () {
            onPlayAudio();
          },
        ),
      ),
    );
  }
}

void onPlayAudio() async {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/audio/chalisha.mp3"),
    showNotification: true,
  );
  // AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  // assetsAudioPlayer.open(
  //   Audio("assets/audio/chalisha.mp3"),
  // );
}
