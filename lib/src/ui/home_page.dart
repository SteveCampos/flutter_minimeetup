import 'package:flutter/material.dart';
import 'package:flutter_minimeetup/src/blocs/color_bloc.dart';
import 'package:flutter_minimeetup/src/blocs/counter_bloc.dart';
import 'package:flutter_minimeetup/src/ui/change_color_fabs.dart';
import 'package:flutter_minimeetup/src/ui/counter_view.dart';
import 'package:flutter_minimeetup/src/ui/color_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  final _colorBloc = ColorBloc();

  final _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter MiniMeetup Demo')),
        body: Column(
          children: <Widget>[
            BlocProvider(bloc: _colorBloc, child: ColorView()),
            BlocProvider(bloc: _counterBloc, child: CounterView())
          ],
        ),
        floatingActionButton:
            BlocProvider(bloc: _colorBloc, child: ChangeColorFabs()));
  }

  @override
  void dispose() {
    _colorBloc.dispose();
    _counterBloc.dispose();
    super.dispose();
  }
}
