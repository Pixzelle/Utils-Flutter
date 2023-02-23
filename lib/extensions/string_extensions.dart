import 'dart:convert';

import 'package:utils_flutter/extensions/routing_data.dart';

extension StringExtensions on String? {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this!);
    print('queryParameters: ${uriData.queryParameters} path: ${uriData.path}');
    return RoutingData(
        queryParameters: uriData.queryParameters, route: uriData.path);
  }

  String get capitalize {
    if(isNullOrEmpty){
      return "";
    }
    return '${this?[0].toUpperCase()}${this?.substring(1)}';
  }

  Map get toJson {
    return json.decode(this!);
  }

  bool get isNullOrEmpty => this == null || this!.isEmpty;

}
