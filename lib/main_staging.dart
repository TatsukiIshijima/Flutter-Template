import 'package:flutter/material.dart';
import 'package:fluttertemplate/app.dart';
import 'package:fluttertemplate/flavor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider<Flavor>.value(value: Flavor.staging, child: App()));
}
