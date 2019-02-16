import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_minimeetup/src/blocs/color_bloc.dart';

class ChangeColorFabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     ColorBloc colorBloc = BlocProvider.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              colorBloc.dispatch(ColorEvent.changeToBlue);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.red,
            onPressed: () {
              colorBloc.dispatch(ColorEvent.changeToRed);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: FloatingActionButton(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.yellow,
            onPressed: () {
              colorBloc.dispatch(ColorEvent.changeToYellow);
            },
          ),
        ),
      ],
    );
  }
}
