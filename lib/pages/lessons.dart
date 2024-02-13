import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
      
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child:  Scaffold(
        body: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
          children:[ 
          
           
            
            _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
              const SizedBox(height: 80.0,),
         

        ]),
        floatingActionButton: FloatingActionButton(
          
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
        
      ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}