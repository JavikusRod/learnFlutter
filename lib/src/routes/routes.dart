import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/src/pages/alert_page.dart';
import 'package:test1/src/pages/avatar_page.dart';
import 'package:test1/src/pages/card_page.dart';
import 'package:test1/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
    };

MaterialPageRoute notFoundRoute(settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Not Found Page'),
        ),
        body: Center(
          child: Text('Not Found Page'),
        ),
      ),
    );
