import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_video_project/videoitems.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test video player'),
      ),
      body: Center(
        child: ListView(
          children: [
            VideoItems(
                videoPlayerController: VideoPlayerController.network(
                    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4'),
                looping: true,
                autoplay: true),
            VideoItems(
                videoPlayerController: VideoPlayerController.network(
                    'https://assets.mixkit.co/videos/preview/mixkit-mysterious-pale-looking-fashion-woman-at-winter-39878-large.mp4'),
                looping: true,
                autoplay: true),
          ],
        ),
      ),
    );
  }
}
