import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/base/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/AverageStatCard.dart';

class AverageStatsScreen extends AverageCityScreen<AverageStatCard,
    MapEntry<CityAverage?, CityAverage?>, CityAverageBloc> {
  @override
  final Map<int, AverageStatCard Function(MapEntry<CityAverage?, CityAverage?>)>
      gridItemMapper = {
    0: (cityWithAll) => AverageStatCard(
          title: 'Building Count',
          aggregatedAmount: double.parse(
              cityWithAll.key!.building_count_avg.toStringAsFixed(2)),
          topIcon: Icon(Icons.account_balance_sharp),
          topIconBackgroundColor: Colors.orange,
        ),
    1: (cityWithAll) => AverageStatCard(
          title: 'Factory Count',
          aggregatedAmount: double.parse(
              cityWithAll.key!.factory_count_avg.toStringAsFixed(2)),
          topIcon: Icon(Icons.add_business),
          topIconBackgroundColor: Colors.brown,
        ),
    2: (cityWithAll) => AverageStatCard(
          title: 'House Count',
          aggregatedAmount:
              double.parse(cityWithAll.key!.house_count_avg.toStringAsFixed(2)),
          topIcon: Icon(Icons.house),
          topIconBackgroundColor: Colors.amber,
        ),
    3: (cityWithAll) => AverageStatCard(
        title: 'Money',
        aggregatedAmount:
            double.parse(cityWithAll.key!.money_avg.toStringAsFixed(2)),
        topIcon: Icon(Icons.account_balance_wallet),
        topIconBackgroundColor: Colors.lightGreen),
    4: (cityWithAll) => AverageStatCard(
        title: 'Pollution',
        aggregatedAmount:
            double.parse(cityWithAll.key!.pollution_avg.toStringAsFixed(2)),
        topIcon: Icon(Icons.warning),
        topIconBackgroundColor: Colors.grey),
    5: (cityWithAll) => AverageStatCard(
        title: 'Population',
        aggregatedAmount:
            double.parse(cityWithAll.key!.population_avg.toStringAsFixed(2)),
        topIcon: Icon(Icons.person),
        topIconBackgroundColor: Colors.pinkAccent),
    6: (cityWithAll) => AverageStatCard(
        title: 'Power',
        aggregatedAmount:
            double.parse(cityWithAll.key!.power_avg.toStringAsFixed(2)),
        topIcon: Icon(Icons.power),
        topIconBackgroundColor: Colors.yellow),
  };

  AverageStatsScreen({required String errorText}) : super(errorText: errorText);
}
