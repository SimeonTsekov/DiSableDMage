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
            cityAggregatedAmount: aggregatedAndAll.key!.building_count_avg,
            globalAggregatedAmount: aggregatedAndAll.value!.building_count_avg),
        CityAverageBarChart(
            chartTitle: 'Factory count',
            cityAggregatedAmount: aggregatedAndAll.key!.factory_count_avg,
            globalAggregatedAmount:
                aggregatedAndAll.value!.factory_count_avg),
        CityAverageBarChart(
            chartTitle: 'House count',
            cityAggregatedAmount: aggregatedAndAll.key!.house_count_avg,
            globalAggregatedAmount:
                aggregatedAndAll.value!.house_count_avg),
        CityAverageBarChart(
            chartTitle: 'Money count',
            cityAggregatedAmount: aggregatedAndAll.key!.money_avg,
            globalAggregatedAmount: aggregatedAndAll.value!.money_avg),
        CityAverageBarChart(
            chartTitle: 'Population count',
            cityAggregatedAmount: aggregatedAndAll.key!.population_avg,
            globalAggregatedAmount: aggregatedAndAll.value!.population_avg),
        CityAverageBarChart(
            chartTitle: 'Power count',
            cityAggregatedAmount: aggregatedAndAll.key!.power_avg,
            globalAggregatedAmount: aggregatedAndAll.value!.power_avg),
      ];
}
