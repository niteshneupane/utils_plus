import 'dart:io';

extension FileSize on File? {
  /// Get FIle Size in MB and KB
  String? get fileSize {
    if (this != null) {
      int totalBytes = this!.readAsBytesSync().lengthInBytes;
      int totalKB = totalBytes ~/ 1000;
      if (totalKB >= 1000) {
        int totalMB = totalKB ~/ 1000;
        return "$totalMB MB";
      }
      return "$totalKB KB";
    }
    return null;
  }
}

// Get first file or null on nullable file list
extension FileManilupationSize on List<File>? {
  File? get getFirstOrNull {
    if (this != null && this!.isNotEmpty) {
      return this!.first;
    }
    return null;
  }
}
