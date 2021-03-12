import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/widgets/Error.dart';
import 'package:hacktues_gg_app/widgets/Loading.dart';

import '../../blocs/CityBloc.dart';
import '../../blocs/base/Bloc.dart';
import '../../di/serviceLocator.dart';
import '../../model/City.dart';
import '../../state/ResponseState.dart';

abstract class CityScreen<M, T extends Bloc<S extends ResponseState<M>, K>> extends StatelessWidget {
  final T cityBloc = $<T>();
  final String onErrorText;

  CityScreen({required this.onErrorText});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ResponseState<S>>(
        stream: cityBloc.behaviorSubject.stream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.when(
                  (city) => Container(
                  child: buildOnCityFetched(city),
                  color: Colors.lightBlueAccent,
                ),
                idle: () => Container(
                  color: Colors.lightBlueAccent,
                ),
                loading: () => Loading(),
                error: (ex) => Error(error: onErrorText));
          } else if (snapshot.connectionState != ConnectionState.active) {
            return Loading();
          } else {
            return Error(error: onErrorText);
          }
        });
  }

  Widget buildOnCityFetched(S city);
}
