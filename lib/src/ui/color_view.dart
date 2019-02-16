import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_minimeetup/src/blocs/color_bloc.dart';

class ColorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc _colorBloc = BlocProvider.of<ColorBloc>(context);
    return BlocBuilder(
        bloc: _colorBloc,
        builder: (BuildContext context, ColorState colorState) {
          return Center(
            child: Text(
              'color: $colorState',
              style: TextStyle(fontSize: 24.0),
            ),
          );
        });
  }
}
