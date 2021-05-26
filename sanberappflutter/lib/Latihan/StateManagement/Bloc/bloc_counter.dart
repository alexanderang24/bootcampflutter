import 'dart:async';

import 'package:sanberappflutter/Latihan/StateManagement/Bloc/event_manager.dart';

class BlocCounter {
  int _counter = 0;

  final _counterStateController = StreamController<int>();
  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<EventManager>();
  Sink<EventManager> get counterEventSink => _counterEventController.sink;

  BlocCounter() {
    _counterEventController.stream.listen(_mapEventTotState);
  }

  void _mapEventTotState(EventManager event) {
    if (event is IncrementEvent) {
      _counter++;
    } else {
      _counter--;
    }

    _counterStateController.sink.add(_counter);
  }

  void dispose() {
    _counterEventController.close();
    _counterStateController.close();
  }
}
