import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test1/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: _localDelegates(),
      supportedLocales: _suportedLocales(),
      title: 'Components',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onUnknownRoute: (settings) => notFoundRoute(settings),
      routes: getAppRoutes(), // home: HomePage());
    );
  }

  _suportedLocales() => [Locale('en', 'US'), Locale('es', 'ES')];
}

_localDelegates() => [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ];
