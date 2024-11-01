import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SafetyVideoScreen extends StatefulWidget {
  final String videoUrl;

  const SafetyVideoScreen({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _SafetyVideoScreenState createState() => _SafetyVideoScreenState();
}

class _SafetyVideoScreenState extends State<SafetyVideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {}); // Refresh UI when video initializes
        _controller.play(); // Start playing after initialization
      })
      ..setLooping(true); // Optional: Enable looping if desired
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safety Tips Video"),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : CircularProgressIndicator(), // Show loader while video is loading
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
