import 'dart:io';

import 'package:background_fetch/background_fetch.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/persistence/SembastDB.dart';
import 'package:hacktues_gg_app/screens/root/Root.dart';
import 'package:hacktues_gg_app/services/Prefs.dart';
import 'package:hacktues_gg_app/services/Storage.dart';

import 'blocs/CityBloc.dart';
import 'di/serviceLocator.dart';

const calculationsTaskId = 'CityBackgrounBiDirectional';

Future<void> _headless(String taskId) async {
  if (taskId == calculationsTaskId) {
    // calculations and stuff
    print('HEADLESS');
    BackgroundFetch.finish(taskId);
  }
}

Future<void> _onBackgroundFetch(String taskId) async {
  // calculations and stuff
  if (taskId == calculationsTaskId) {
    final CityBloc cityBloc = $<CityBloc>();
    final Prefs prefs = $<Prefs>();
    final Storage storage = $<Storage>();
    bool? shouldSendBg = await prefs.getShouldFetchBackgroundStream().first;

    if (shouldSendBg == true) {
      SembastDB localDb = $<SembastDB>();
      final City currentCity = await localDb.fetchCurrentCity();
      final City updatedCity = currentCity.copyWith.call(
        money: currentCity.moneyMultiplier * currentCity.money,
        pollution: currentCity.pollutionMultiplier * currentCity.pollution,
        power: currentCity.powerMultiplier * currentCity.power,
      );

      localDb.updateCity(updatedCity);
      await storage.uploadStats(updatedCity);
      cityBloc.sendEvent(CityEvent.updateCity(updatedCity));
    } else {
      print("SHOULDSENDBG TRIGGERED FALSE INSIDE _ONBACKGROUND FETCH. THIS SHOULD NEEEEVER HAPPEN");
    }

    BackgroundFetch.finish(taskId);
  }
}

Future<void> _onBackgroundFetchTimeout(String taskId) async {
  print("[BackgroundFetch] TASK TIMEOUT taskId: $taskId");
  BackgroundFetch.finish(taskId);
}

Future<void> configureBackgroundFetch() async {
  await BackgroundFetch.configure(
      BackgroundFetchConfig(
          minimumFetchInterval: 1,
          stopOnTerminate: false,
          enableHeadless: true,
          forceAlarmManager: Platform.isAndroid),
      _onBackgroundFetch,
      _onBackgroundFetchTimeout);
  BackgroundFetch.registerHeadlessTask(
      _headless); // only for android when app is terminated
  BackgroundFetch.scheduleTask(TaskConfig(
      taskId: calculationsTaskId,
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
