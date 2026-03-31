import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> videoFeed = List.generate(20, (index) => 'Video $index');
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  void _loadMore() {
    // Simulated loading delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        videoFeed.addAll(List.generate(10, (index) => 'Video ${videoFeed.length + index}'));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Feed')), 
      body: ListView.builder(
        controller: _scrollController,
        itemCount: videoFeed.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(videoFeed[index]));
        },
      ),
    );
  }
}