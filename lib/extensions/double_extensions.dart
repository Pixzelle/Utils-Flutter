import 'package:intl/intl.dart';

extension DoubleExtensions on double?{

  String toFormat(){
    final currencyFormat = NumberFormat('###,###.0#', "es_MX");
    return currencyFormat.format(this);
  }
}
