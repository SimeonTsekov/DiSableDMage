import 'dart:io';

import 'package:background_fetch/background_fetch.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/navigation/PageManager.dart';
import 'package:hacktues_gg_app/screens/root/Root.dart';

const _calculationsTaskId = 'calculations and stuff';

Future<void> _headless(String taskId) async {
  if (taskId == _calculationsTaskId) {
    // calculations and stuff
    print('HEADLESS');
    BackgroundFetch.finish(taskId);
  }
}

Future<void> _onBackgroundFetch(String taskId) async {
  // calculations and stuff
  if (taskId == _calculationsTaskId) {
    print('Background fetch');
    // stuff
    BackgroundFetch.finish(taskId);
  }
}

Future<void> _configureBackgroundFetch() async {
  await BackgroundFetch.configure(
      BackgroundFetchConfig(
          minimumFetchInterval: 1,
          stopOnTerminate: false,
          enableHeadless: true,
          forceAlarmManager: Platform.isAndroid),
      _onBackgroundFetch);
  BackgroundFetch.registerHeadlessTask(
      _headless); // only for android when app is terminated
  BackgroundFetch.scheduleTask(TaskConfig(
      taskId: _calculationsTaskId,
      stopOnTerminate: false,
      startOnBoot: true,
      periodic: true,
      delay: 60000,
      enableHeadless: true,
      forceAlarmManager: Platform.isAndroid));
  // when unity client goes back up, we call BackgroundFetch.finish(_taskId);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  await _configureBackgroundFetch();
  runApp(RootPage($()));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var centerText = 'Hello, is there anybody deur?';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                centerText,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              centerText = 'Hello, is there anybody deur?';
            });
          },
          child: Icon(Icons.add),
        ),
      );
}
