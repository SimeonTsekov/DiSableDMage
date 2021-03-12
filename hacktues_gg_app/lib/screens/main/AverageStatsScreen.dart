import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/base/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/AverageStatCard.dart';

class AverageStatsScreen
    extends AverageCityScreen<AverageStatCard, CityAverage, CityAverageBloc> {
  AverageStatsScreen({required String errorText}) : super(errorText: errorText);

  // SUCKS MAJOR DICK
  @override
  List<AverageStatCard> buildAverageStatDisplayListFromCityAverage(
          CityAverage city) =>
      [
        AverageStatCard(
          title: 'Building Count',
          aggregatedAmount:
              double.parse(city.buildingCountAverage.toStringAsFixed(2)),
          opacityFadeInDuration: 100,
          topIcon: Icon(Icons.ac_unit_rounded),
          topIconBackgroundColor: Colors.orange,
        ),
        AverageStatCard(
          title: 'Factory Count',
          aggregatedAmount:
              double.parse(city.factoryCountAverage.toStringAsFixed(2)),
          opacityFadeInDuration: 100,
          topIcon: Icon(Icons.ac_unit_rounded),
          topIconBackgroundColor: Colors.brown,
        ),
        AverageStatCard(
          title: 'House Count',
          aggregatedAmount:
              double.parse(city.houseCountAverage.toStringAsFixed(2)),
          topIcon: Icon(Icons.ac_unit_rounded),
          opacityFadeInDuration: 200,
          topIconBackgroundColor: Colors.amber,
        ),
        AverageStatCard(
            title: 'Money',
            aggregatedAmount:
                double.parse(city.moneyAverage.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 200,
            topIconBackgroundColor: Colors.lightGreen),
        AverageStatCard(
            title: 'Pollution',
            aggregatedAmount:
                double.parse(city.pollutionAverage.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 300,
            topIconBackgroundColor: Colors.grey),
        AverageStatCard(
            title: 'Population',
            aggregatedAmount:
                double.parse(city.populationAverage.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 300,
            topIconBackgroundColor: Colors.pinkAccent),
        AverageStatCard(
            title: 'Power',
            aggregatedAmount:
                double.parse(city.powerAverage.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 400,
            topIconBackgroundColor: Colors.yellow),
      ];
}
