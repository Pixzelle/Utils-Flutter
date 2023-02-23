import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pixzelle_utils/app_localizations.dart';
import 'package:pixzelle_utils/extensions/routing_data.dart';

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

  String translate(BuildContext context) {
    return AppLocalization.of(context)?.translate(this!) ?? "";
  }

  String translateCapitalized(BuildContext context) {
    return translate(context).capitalize;
  }

  Map get toJson {
    return json.decode(this!);
  }

  bool get isNullOrEmpty => this == null || this!.isEmpty;

}
