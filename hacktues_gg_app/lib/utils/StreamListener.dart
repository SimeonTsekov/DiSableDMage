import 'dart:async';

import 'package:flutter/widgets.dart';

typedef StreamOnDataListener<T> = void Function(T data);

typedef StreamOnErrorListener = void Function(
  dynamic error,
  StackTrace stackTrace,
);

typedef StreamOnDoneListener = void Function();

class StreamListener<T> extends StatefulWidget {
  final Stream<T> stream;

  final StreamOnDataListener<T> onData;

  final Widget child;

  final StreamOnErrorListener? onError;

  final StreamOnDoneListener? onDone;

  final bool? cancelOnError;

  const StreamListener({
    Key? key,
    required this.stream,
    required this.onData,
    required this.child,
    this.onError,
    this.onDone,
    this.cancelOnError,
  }) : super(key: key);

  @override
  _StreamListenerState createState() => _StreamListenerState<T>();
}

class _StreamListenerState<T> extends State<StreamListener<T>> {
  Stream<T> get _stream => widget.stream;
  late StreamSubscription<T> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = _stream.listen(
      widget.onData,
      onError: widget.onError,
      onDone: widget.onDone,
      cancelOnError: widget.cancelOnError,
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
