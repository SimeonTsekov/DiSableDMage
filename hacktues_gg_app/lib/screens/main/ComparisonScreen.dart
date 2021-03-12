// part of AverageStatsScreen 2-panel pageview for stats

import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/model/CityAverage.dart';
import 'package:hacktues_gg_app/screens/main/AverageCityScreen.dart';
import 'package:hacktues_gg_app/widgets/CityAverageBarChart.dart';

class ComparisonScreen extends AverageCityScreen<CityAverageBarChart,
    CityAverage, CityAverageBloc> {
  ComparisonScreen({required String errorText}) : super(errorText: errorText);

  @override
  List<CityAverageBarChart> buildAverageStatDisplayListFromCityAverage(
          CityAverage city) =>
      [

      ];
}
