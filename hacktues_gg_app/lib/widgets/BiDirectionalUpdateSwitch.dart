import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/PrefsBackgroundBloc.dart';
import 'package:hacktues_gg_app/event/PrefBackgroundRunEvent.dart';
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
            return Switch.adaptive(
                value: snapshot.data!.state
                    .map(on: (_) => true, off: (_) => false),
                onChanged: snapshot.data!.shouldRun
                    ? ((value) => prefsBgBloc
                        .sendEvent(PrefBackgroundRunEvent.toggle(value)))
                    : null);
          } else if (snapshot.error != null) {
            return Text('ok, ERROR NO SWITCH');
          } else {
            return Text('UNKNOWN WTF???');
          }
        });
  }
}
