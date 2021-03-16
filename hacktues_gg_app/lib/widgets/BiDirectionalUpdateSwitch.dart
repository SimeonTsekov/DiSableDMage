import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/PrefsBackgroundBloc.dart';
import 'package:hacktues_gg_app/event/PrefBackgroundRunEvent.dart';
import 'package:hacktues_gg_app/main.dart';
import 'package:hacktues_gg_app/state/PrefBackgroundRunState.dart';
import 'package:rxdart/rxdart.dart';

class _EventShouldRun {
  PrefBackgroundRunState state;
  bool shouldRun;

  _EventShouldRun({required this.state, required this.shouldRun});
}

// streambuilder for rx shared preferences boolean
// enable/disable by this streambuilder
class BiDirectionalUpdateSwitch extends StatelessWidget {
  final PrefsBackgroundRunBloc prefsBgBloc;

  BiDirectionalUpdateSwitch({required this.prefsBgBloc});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_EventShouldRun>(
        stream: CombineLatestStream.list<dynamic>([
          prefsBgBloc.behaviourSubject.stream,
          prefsBgBloc.getShouldFetchBackgroundStream()
        ]).map((stateBoolPair) => _EventShouldRun(
            state: stateBoolPair[0], shouldRun: stateBoolPair[1] == true)),
        builder: (context, snapshot) {
          // hasData bugs out
          if (snapshot.data != null) {
            if (!snapshot.data!.shouldRun) {
              BackgroundFetch.finish(calculationsTaskId);
            }

            return Switch(
                value: snapshot.data!.state
                    .map(on: (_) => true, off: (_) => false),
                onChanged: snapshot.data!.shouldRun
                    ? ((value) async {
                        prefsBgBloc
                            .sendEvent(PrefBackgroundRunEvent.toggle(value));
                        await configureBackgroundFetch();
                      })
                    : null);
          } else if (snapshot.error != null) {
            return Text('ok, ERROR NO SWITCH');
          } else {
            return Text('UNKNOWN WTF???');
          }
        });
  }
}
