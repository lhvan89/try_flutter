import 'package:flutter/material.dart';
import 'package:flutter_event_bus/flutter_event_bus.dart';
import 'Events.dart';
import 'Page3.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends Interactor<Page2> {
  int _counter = 0;

  void _incrementCounterListener(ReloadCounter event) {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_counter', style: TextStyle(fontSize: 30.0),),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
              },
              child: Text('Go To Page 3'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Subscription subscribeEvents(EventBus eventBus) =>
      // TODO: implement subscribeEvents
  eventBus.respond<ReloadCounter>(_incrementCounterListener);
}
