import 'package:flutter/material.dart';

void main() {
  runApp(NayanApp());
}

class NayanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoScreen(),
    );
  }
}

class VideoScreen extends StatelessWidget {
  final List<String> videos = [
    "🔥 Video 1",
    "😎 Video 2",
    "🚀 Video 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Center(
                child: Text(
                  videos[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                    SizedBox(height: 20),
                    Icon(Icons.comment, color: Colors.white, size: 40),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}