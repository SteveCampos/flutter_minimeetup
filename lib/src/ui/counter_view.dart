import 'package:flutter/material.dart';
import 'package:flutter_minimeetup/src/blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _counterBloc = BlocProvider.of<CounterBloc>(context);
    _counterBloc.startCounter();
    return BlocBuilder(
        bloc: _counterBloc,
        builder: (BuildContext context, int count) {
          return Center(
            child: Text('counter: $count'),
          );
        });
  }
}
