import 'package:utils_plus/utils_plus.dart';

class DataModel<T> {
  final String name;
  final T input;
  final String? inputString;

  DataModel({
    required this.name,
    required this.input,
    this.inputString,
  });

  String get stringResult {
    if (input is String) {
      String data = input as String;

      switch (name) {
        case "removeLast":
          return data.removeLast;

        case "toCapitalizeFirst":
          return data.toCapitalizeFirst;
        case "toCapitalizeEachWord":
          return data.toCapitalizeEachWord;
        case "wordToSentence":
          return data.wordToSentence;
        case "formatEmailToStar":
          return data.formatEmailToStar;
        case "getFirstName":
          return data.getFirstName;
        case "getLastName":
          return data.getLastName;
        case "toOneWord":
          return data.toOneWord;
        case "extention":
          return data.extention;
        case "fileName":
          return data.fileName;
        case "isPdf":
          return data.isPdf.toString();
        case "isImage":
          return data.isImage.toString();
        case "isNotEmptyOrNull":
          return "${data.isNotEmptyOrNull}";
        case "emoji":
          return data.emoji;
        default:
          return "-";
      }
    }
    return "-";
  }

  String get dateTimeResult {
    if (input is DateTime) {
      DateTime data = input as DateTime;

      switch (name) {
        case "isSameDate":
          return data.isSameDate(DateTime.now()).toString();
        case "toFormattedString":
          return data.toFormattedString();
        case "getDurationName":
          return data.getDurationName;
        case "getRelated":
          return "${data.getRelated(DateTime.now())}";

        default:
          return "-";
      }
    }
    return "-";
  }

  String get enumResult {
    if (input is Enum) {
      final data = input as Enum;

      switch (name) {
        case "toFormattedString":
          return data.toFormattedString;

        default:
          return "-";
      }
    }
    return "-";
  }

  String get numResult {
    if (input is num) {
      final data = input as num;

      switch (name) {
        case "toNonZero":
          return data.toNonZero.toString();
        case "formatTime":
          return data.toInt().formatTime.toString();
        case "formatTimeToHrMinSec":
          return data.toInt().formatTimeToHrMinSec.toString();
        case "formatTimeToHrMin":
          return data.toInt().formatTimeToHrMin.toString();

        default:
          return "-";
      }
    }
    return "-";
  }

  String get result {
    if (input is String) {
      return stringResult;
    } else if (input is DateTime) {
      return dateTimeResult;
    } else if (input is Enum) {
      return enumResult;
    } else if (input is num) {
      return numResult;
    }
    return "-";
  }

  String get getInput {
    if (inputString != null) {
      return "$inputString.$name";
    }
    return "\"$input\".$name";
  }
}
