import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/widgets/Error.dart';
import 'package:hacktues_gg_app/widgets/Loading.dart';

import '../../blocs/CityBloc.dart';
import '../../di/serviceLocator.dart';
import '../../model/City.dart';
import '../../state/ResponseState.dart';

abstract class CityScreen extends StatelessWidget {
  final CityBloc cityBloc = $<CityBloc>();
  final String onErrorText;

  CityScreen({required this.onErrorText});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ResponseState<City>>(
        stream: cityBloc.behaviourSubject.stream,
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.when((city) => buildOnCityFetched(city),
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

  Widget buildOnCityFetched(City city);
}
