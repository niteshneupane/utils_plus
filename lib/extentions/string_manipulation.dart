extension StringManipulation on String {
  /// Removing last element form string
  /// a="qwer";
  /// b = a.removerLast
  /// print(b) returns qwe
  String get removeLast {
    if (isNotEmpty) {
      return substring(0, length - 1);
    }
    return "";
  }

  // Capitalize first letter of String
  String get toCapitalizeFirst {
    if (isEmpty || length < 2) {
      return this;
    }
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  // Capitalize first letter of all words of a sentence
  String get toCapitalizeEachWord {
    if (isEmpty) {
      return this;
    } else {
      List<String> s = split(" ");
      List<String> newS = [];
      for (var element in s) {
        newS.add(element.toCapitalizeFirst);
      }
      return newS.join(" ");
    }
  }

  /// Convert lowerCamelCase word to sentence
  /// Like a = "appleBallCat"
  /// a.worldToSentence results Apple Ball Cat
  String get wordToSentence {
    if (isEmpty) {
      return this;
    } else {
      String b = split("")
          .map(
            (e) => e.contains(RegExp(r'[A-Z]')) ? "-$e" : e,
          )
          .toList()
          .join("")
          .split("-")
          .join(" ");
      return b;
    }
  }

  /// Convert test@gmail.com to t****@gmail.com
  String get formatEmailToStar {
    List<String> parts = split('@');
    if (parts.length != 2) {
      return this;
    }

    String localPart = parts[0];
    String domainPart = parts[1];

    String firstCharacter = localPart.substring(0, 1);
    String maskedLocalPart = '$firstCharacter*****';
    return '$maskedLocalPart@$domainPart';
  }

  /// from string John Doe returns John
  String get getFirstName {
    List<String> parts = split(' ');
    if (parts.length <= 1) {
      return this;
    }
    return parts[0];
  }

  /// from string John Doe returns Doe

  String get getLastName {
    List<String> parts = split(' ');
    if (parts.length <= 1) {
      return '';
    }

    parts.removeAt(0);
    return parts.join(' ');
  }

  /// from string John Doe returns JohnDoe

  String get toOneWord {
    List<String> parts = split(' ');
    return parts.join("");
  }

  /// from string apple.txt returm txt
  String get extention {
    List<String> dd = split(".");
    if (dd.length >= 2) {
      return dd.last;
    }
    return "";
  }

  /// from path like apple/ball.txt returns ball.txt
  String get fileName {
    List<String> dd = split("/");
    if (dd.length >= 2) {
      return dd.last;
    }
    return "";
  }

  /// from fileName as  test.pdf return true
  bool get isPdf {
    if (extention == "pdf") return true;
    return false;
  }

  /// from fileName as image extentions return true

  bool get isImage {
    if (extention == "jpg" || extention == "jpeg" || extention == "png") {
      return true;
    }
    return false;
  }

  /// Returns null for a empty String
  String? get isNotEmptyOrNull => isEmpty ? null : this;

  /// Get Emoji from Country Code Symbol
  /// Like "NP".emoji return nepal flag (🇳🇵)
  String get emoji {
    try {
      final int firstLetter = codeUnitAt(0) - 0x41 + 0x1F1E6;
      final int secondLetter = codeUnitAt(1) - 0x41 + 0x1F1E6;
      return String.fromCharCode(firstLetter) +
          String.fromCharCode(secondLetter);
    } catch (e) {
      return this;
    }
  }
}
