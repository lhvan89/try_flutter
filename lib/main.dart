import 'package:flutter/material.dart';
import 'package:flutter_event_bus/flutter_event_bus.dart';
import 'package:try_flutter/Page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EventBusWidget(
        child: MaterialApp(
          title: 'Flutter Demo',
          home: Page1(),
        )
    );
  }
}