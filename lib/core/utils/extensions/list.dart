import 'package:flutter/foundation.dart';

typedef FromJson<T> = T Function(Map<String,dynamic> json);

extension ListExtension on List {
  bool get isNullOrEmpty => isEmpty;

  List<T> fromJson<T>(FromJson<T> fromJson) {
    return List.from(this).map((e) => fromJson(e)).toList();
  }

  Future<List<T>> computeFromJson<T>(FromJson<T> fromJson) async {
    return await compute<FromJson<T>, List<T>>(mapperFromJson, fromJson);
  }

  List<T> mapperFromJson<T>(FromJson<T> fromJson) {
    return List<Map<String,dynamic>>.from(this).map<T>(fromJson).toList();
  }
}

extension ListExtension2<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
