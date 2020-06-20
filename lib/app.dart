import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertemplete/localize/AppLocalizations.dart';
import 'package:fluttertemplete/localize/AppLocalizationsDelegate.dart';
import 'package:fluttertemplete/sample_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          const AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('ja')
        ],
        onGenerateTitle: (context) => AppLocalizations.of(context).title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SamplePage());
  }
}
