import 'package:flutter/material.dart';
import 'package:sanberappflutter/Latihan/StateManagement/Bloc/bloc_counter.dart';
import 'package:sanberappflutter/Latihan/StateManagement/Bloc/event_manager.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _bloc = BlocCounter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc State Managment"),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counter,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snip) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Press below button"),
                Text(
                  "${snip.data}",
                  style: TextStyle(fontSize: 40),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              print("Increment");
              _bloc.counterEventSink.add(IncrementEvent());
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              print("Decrement");
              _bloc.counterEventSink.add(DecrementEvent());
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
