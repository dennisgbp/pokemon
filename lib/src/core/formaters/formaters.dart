import 'package:intl/intl.dart';
import 'package:meta/meta.dart' show required;

/// -default format 7:30 am
String formatTime({@required DateTime? date, String format = 'jm'}) {
  if(date == null) return "";
  return DateFormat(format).format(date.toLocal());
}

/// -default format 1/12/2020
String formatDate({required DateTime date, String format = 'dd/MM/yyyy'}) {
  return DateFormat(format, 'es').format(date.toLocal());
}

///  Returns a double formatted to string
///  ```dart
/// formatNumber(1500) == 1.500,00
/// ```
String formatNumber({@required double? number, int decimalDigits = 0}) {
  if(number== null) return "";
  return NumberFormat.currency(locale: 'es', symbol: '', decimalDigits: decimalDigits).format(number);
}