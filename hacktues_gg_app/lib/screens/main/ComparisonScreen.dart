// part of AverageStatsScreen 2-panel pageview for stats

import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/base/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/CityAverageBarChart.dart';

class ComparisonScreen extends AverageCityScreen<CityAverageBarChart,
    MapEntry<CityAverage?, CityAverage?>, CityAverageBloc> {
  ComparisonScreen({required String errorText}) : super(errorText: errorText);

  @override
  final Map<int,
          CityAverageBarChart Function(MapEntry<CityAverage?, CityAverage?>)>
      gridItemMapper = {
    0: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'Building count',
          cityAggregatedAmount: aggregatedAndAll.key!.building_count_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.building_count_avg,
        ),
    1: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'Factory count',
          cityAggregatedAmount: aggregatedAndAll.key!.factory_count_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.factory_count_avg,
        ),
    2: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'House count',
          cityAggregatedAmount: aggregatedAndAll.key!.house_count_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.house_count_avg,
        ),
    3: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'Money',
          cityAggregatedAmount: aggregatedAndAll.key!.money_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.money_avg,
        ),
    4: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'Population',
          cityAggregatedAmount: aggregatedAndAll.key!.population_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.population_avg,
        ),
    5: (aggregatedAndAll) => CityAverageBarChart(
          chartTitle: 'Power',
          cityAggregatedAmount: aggregatedAndAll.key!.power_avg,
          globalAggregatedAmount: aggregatedAndAll.value!.power_avg,
        ),
  };
}
