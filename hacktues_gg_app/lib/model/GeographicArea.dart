import 'package:hacktues_gg_app/model/Model.dart';

abstract class GeographicArea extends Model {
  int get population;
  String get name;
}