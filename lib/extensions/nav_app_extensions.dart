import 'dart:io';

import 'package:utils_flutter/enums/nav_app.dart';


extension NavAppExtension on NavApp {
  String get name {
    switch (this) {
      case NavApp.waze:
        return 'Waze';
      case NavApp.gmaps:
        return 'Google Maps';
      case NavApp.appleMaps:
        return 'Apple Maps';
    }
  }

  String uri(double latitude, double longitude) {
    switch (this) {
      case NavApp.waze:
        return Platform.isAndroid
            ? 'https://waze.com/ul?ll=$latitude,$longitude&navigate=yes'
            : 'waze://?ll=$latitude,$longitude&navigate=yes';
      case NavApp.gmaps:
        return Platform.isAndroid
            ? 'https://maps.google.com/maps?daddr=$latitude,$longitude'
            : 'comgooglemaps://?q=$latitude,$longitude';
      case NavApp.appleMaps:
        return 'https://maps.apple.com/?saddr=Current%20Location&daddr=$latitude,$longitude';
    }
  }

  String get packageName {
    switch (this) {
      case NavApp.waze:
        return Platform.isAndroid ? 'com.waze' : 'waze://';
      case NavApp.gmaps:
        return Platform.isAndroid
            ? 'com.google.android.apps.maps'
            : 'comgooglemaps://';
      case NavApp.appleMaps:
        return 'maps://';
    }
  }
}
