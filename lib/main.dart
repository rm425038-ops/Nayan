void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nayan App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Nayan'),
        ),
        body: Center(
          child: Text('Hello, Nayan!'),
        ),
      ),
    );
  }
}