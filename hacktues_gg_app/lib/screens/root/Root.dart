import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/navigation/PageManager.dart';
import 'package:hacktues_gg_app/screens/root/NavigatorEntryPoint.dart';

class RootPage extends StatelessWidget {
  final PageManager _manager;

  const RootPage(this._manager);

  @override
  Widget build(BuildContext context) => MaterialApp(
        color: Colors.lightBlue,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavigatorEntryPoint(this._manager),
      );
}
