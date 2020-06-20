import 'package:flutter/material.dart';
import 'package:fluttertemplete/app.dart';
import 'package:fluttertemplete/flavor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<Flavor>.value(value: Flavor.production, child: App()));
}
