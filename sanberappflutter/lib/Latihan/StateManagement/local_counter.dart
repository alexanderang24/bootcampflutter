import 'package:flutter/material.dart';

class LocalCounter extends StatefulWidget {
  @override
  _LocalCounterState createState() => _LocalCounterState();
}

class _LocalCounterState extends State<LocalCounter> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Local State"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have the button this many times: "),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: incrementCounter,
            tooltip: "Increment",
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: decrementCounter,
            tooltip: "Decrement",
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
