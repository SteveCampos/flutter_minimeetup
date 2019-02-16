import 'package:flutter/material.dart';
import 'package:flutter_minimeetup/src/ui/home_page.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mini Meetup Demo',
      home: MainPage(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
