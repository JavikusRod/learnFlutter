import 'package:flutter/material.dart';
import 'package:test1/src/pages/counter_page.dart';
// import 'package:test1/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: CounterPage(),
          // child: HomePage(),
        ),
      );
}
