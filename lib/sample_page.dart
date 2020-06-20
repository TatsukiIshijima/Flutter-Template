import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplete/flavor.dart';
import 'package:fluttertemplete/localize/AppLocalizations.dart';
import 'package:provider/provider.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).title),
      ),
      body: Center(
        child: Text(Provider.of<Flavor>(context).toString()),
      ),
    );
  }
}
