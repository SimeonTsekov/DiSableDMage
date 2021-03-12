import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/base/RxObject.dart';
import 'package:rxdart/rxdart.dart';

abstract class Bloc<T, S> with RxObject<T> {
  // state and event

  StreamSubscription<S>? streamSubscription;

  Bloc(T initialState) {
    this.behaviourSubject = BehaviorSubject<T>.seeded(initialState);
  }

  create() {}

  pause() => streamSubscription?.pause();

  resume() => streamSubscription?.resume();

  sendEvent(S event);

  @mustCallSuper
  dispose() {
    super.dispose();
    streamSubscription?.cancel();
  }
}
