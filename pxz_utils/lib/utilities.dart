
import 'package:flutter/services.dart';

class Utilities {
  static copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    print("Copied text: $text");
  }
}