import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get getStartDate {
    DateFormat dateFormat = DateFormat('E,dd/MM');
    return dateFormat.format(this);
  }

  String get getEndDate {
    DateFormat dateFormat = DateFormat('E,dd/MM/yyyy');
    return dateFormat.format(this);
  }
}
