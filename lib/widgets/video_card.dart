import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;
  final String videoUrl;

  const VideoCard({Key? key, required this.title, required this.thumbnailUrl, required this.videoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(thumbnailUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement video play functionality here
              print('Playing video: $videoUrl');
            },
            child: Text('Play Video'),
          ),
        ],
      ),
    );
  }
}