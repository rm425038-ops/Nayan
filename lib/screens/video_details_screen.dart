import 'package:flutter/material.dart';

class VideoDetailsScreen extends StatelessWidget {
  final String videoId;

  VideoDetailsScreen({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Details')),  
      body: Column(
        children: [
          // Here display video details (e.g., title, description)
          Text('Video ID: \$videoId'),
          Expanded(
            child: ListView(
              // Placeholder for comments
              children: [
                ListTile(title: Text('Comment 1')),  
                ListTile(title: Text('Comment 2')),  
                ListTile(title: Text('Comment 3')),  
              ],
            ),
          ),
        ],
      ),
    );
  }
}