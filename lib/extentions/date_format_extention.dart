import 'package:intl/intl.dart';

/// Date Manipulation
extension DateFormatExtention on DateTime {
  ///Checks if same date or not
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// converts DateTime to yyyy-MM-dd format or new pattern as wish
  String toFormattedString([String? newPattern]) {
    return DateFormat(newPattern ?? "yyyy-MM-dd").format(this);
  }

  /// Convert date to today / tomorrow / yesterday
  String get getDurationName {
    final now = DateTime.now();
    final differ = difference(now).inDays;
    switch (differ) {
      case 0:
        return "Today";
      case 1:
        return "Tomorrow";
      case -1:
        return "Yesterday";
      default:
        return toFormattedString();
    }
  }

  /// In list of dates if all other date are same it returns null
  /// For Eg
  /// To add title group by date all others data having same date should have same title so one title is
  /// enough for that this extentions can be used
  String? getRelated(DateTime? previousDate) {
    if (previousDate != null) {
      if (difference(previousDate).inDays == 0) {
        return null;
      } else {
        return getDurationName;
      }
    }
    return getDurationName;
  }
}
