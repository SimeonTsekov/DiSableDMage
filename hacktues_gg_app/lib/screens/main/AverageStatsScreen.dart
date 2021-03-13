import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/base/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/AverageStatCard.dart';

class AverageStatsScreen extends AverageCityScreen<AverageStatCard,
    MapEntry<CityAverage?, CityAverage?>, CityAverageBloc> {
  AverageStatsScreen({required String errorText}) : super(errorText: errorText);

  // SUCKS MAJOR DICK
  @override
  List<AverageStatCard> buildAverageStatDisplayListFromCityAverage(
          // Check for null here, and return some Endgame widget here
          MapEntry<CityAverage?, CityAverage?> cityWithAll) =>
      [
        AverageStatCard(
          title: 'Building Count',
          aggregatedAmount: double.parse(
              cityWithAll.key!.building_count_avg.toStringAsFixed(2)),
          opacityFadeInDuration: 100,
          topIcon: Icon(Icons.ac_unit_rounded),
          topIconBackgroundColor: Colors.orange,
        ),
        AverageStatCard(
          title: 'Factory Count',
          aggregatedAmount: double.parse(
              cityWithAll.key!.factory_count_avg.toStringAsFixed(2)),
          opacityFadeInDuration: 100,
          topIcon: Icon(Icons.ac_unit_rounded),
          topIconBackgroundColor: Colors.brown,
        ),
        AverageStatCard(
          title: 'House Count',
          aggregatedAmount: double.parse(
              cityWithAll.key!.house_count_avg.toStringAsFixed(2)),
          topIcon: Icon(Icons.ac_unit_rounded),
          opacityFadeInDuration: 200,
          topIconBackgroundColor: Colors.amber,
        ),
        AverageStatCard(
            title: 'Money',
            aggregatedAmount:
                double.parse(cityWithAll.key!.money_avg.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 200,
            topIconBackgroundColor: Colors.lightGreen),
        AverageStatCard(
            title: 'Pollution',
            aggregatedAmount: double.parse(
                cityWithAll.key!.pollution_avg.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 300,
            topIconBackgroundColor: Colors.grey),
        AverageStatCard(
            title: 'Population',
            aggregatedAmount: double.parse(
                cityWithAll.key!.population_avg.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 300,
            topIconBackgroundColor: Colors.pinkAccent),
        AverageStatCard(
            title: 'Power',
            aggregatedAmount:
                double.parse(cityWithAll.key!.power_avg.toStringAsFixed(2)),
            topIcon: Icon(Icons.ac_unit_rounded),
            opacityFadeInDuration: 400,
            topIconBackgroundColor: Colors.yellow),
      ];
}
