// part of AverageStatsScreen 2-panel pageview for stats

import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/base/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/CityAverageBarChart.dart';

class ComparisonScreen extends AverageCityScreen<CityAverageBarChart,
    MapEntry<CityAverage?, CityAverage?>, CityAverageBloc> {
  ComparisonScreen({required String errorText}) : super(errorText: errorText);

  @override
  List<CityAverageBarChart> buildAverageStatDisplayListFromCityAverage(
          MapEntry<CityAverage?, CityAverage?> aggregatedAndAll) =>
      // Again, check for null here for endgame
      [
        CityAverageBarChart(
            chartTitle: 'Building count',
            cityAggregatedAmount: aggregatedAndAll.key!.buildingCountAverage,
            globalAggregatedAmount:
                aggregatedAndAll.value!.buildingCountAverage),
        CityAverageBarChart(
            chartTitle: 'Factory count',
            cityAggregatedAmount: aggregatedAndAll.key!.factoryCountAverage,
            globalAggregatedAmount:
                aggregatedAndAll.value!.factoryCountAverage),
        CityAverageBarChart(
            chartTitle: 'House count',
            cityAggregatedAmount: aggregatedAndAll.key!.houseCountAverage,
            globalAggregatedAmount: aggregatedAndAll.value!.houseCountAverage),
        CityAverageBarChart(
            chartTitle: 'Money count',
            cityAggregatedAmount: aggregatedAndAll.key!.moneyAverage,
            globalAggregatedAmount: aggregatedAndAll.value!.moneyAverage),
        CityAverageBarChart(
            chartTitle: 'Population count',
            cityAggregatedAmount: aggregatedAndAll.key!.populationAverage,
            globalAggregatedAmount: aggregatedAndAll.value!.populationAverage),
        CityAverageBarChart(
            chartTitle: 'Power count',
            cityAggregatedAmount: aggregatedAndAll.key!.powerAverage,
            globalAggregatedAmount: aggregatedAndAll.value!.powerAverage),
      ];
}
