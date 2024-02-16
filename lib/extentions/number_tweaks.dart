extension NumbersTweak on num {
  /// If zero convert to one or else returns num
  /// Used for case like to prevent divided by zero case
  /// [4/0.toNonZero] returns 4 not infinity
  num get toNonZero {
    if (this == 0) return 1;
    return this;
  }
}

extension NumbersTweakInt on int {
  /// Format time "hr:min:sec"
  String get formatTime {
    if (isNegative) return "$this";
    int hours = (this / 3600).floor();
    int minutes = ((this % 3600) / 60).floor();
    int seconds = (this % 60);

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  /// Format time "hr:min:sec" or "hr:min:sec"

  String get formatTimeMinSec {
    if (isNegative) return "$this";
    int hours = (this / 3600).floor();
    int minutes = ((this % 3600) / 60).floor();
    int seconds = (this % 60);

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return '${hours > 0 ? "$hoursStr:" : ""}$minutesStr:$secondsStr';
  }

  /// Format time "$hr hrs $min mins $sec secs"

  String get formatTimeToHrMinSec {
    if (isNegative) return "$this";
    int hours = (this / 3600).floor();
    int minutes = ((this % 3600) / 60).floor();
    int seconds = (this % 60);

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return '${hours > 0 ? "$hoursStr hrs " : ""}$minutesStr mins $secondsStr secs';
  }

  /// Format time "hr:min or min"

  String get formatTimeToHrMin {
    if (isNegative) return "$this";
    int hours = (this / 3600).floor();
    int minutes = ((this % 3600) / 60).floor();

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');

    return '${hours > 0 ? "$hoursStr hrs " : ""}$minutesStr mins ';
  }
}
