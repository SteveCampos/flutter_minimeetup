import 'package:bloc/bloc.dart';

enum CounterEvent { up, down, stop }

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    if (event == CounterEvent.up) {
      currentState++;
      yield currentState;
    }
  }

  void startCounter() async {
    for (int i = 0; i <= 1000; i++) {
      await Future.delayed(Duration(seconds: 1));
      dispatch(CounterEvent.up);
    }
  }
}
