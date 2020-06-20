import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplete/localize/AppLocalizations.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).title),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
