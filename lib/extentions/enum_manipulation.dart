import 'package:utils_plus/extentions/string_manipulation.dart';

/// Conver all enums to string
extension EnumManipulation on Enum {
  /// Conver all enums to string

  String get toFormattedString {
    return name.wordToSentence.toCapitalizeEachWord;
  }
}
