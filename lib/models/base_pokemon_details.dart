import 'package:hive_flutter/adapters.dart';

abstract class NamedApiResource {
  final String name;
  final String url;

  NamedApiResource({required this.name, required this.url});
}

abstract class NameValuePair {
  @HiveField(15)
  final int? value;
  @HiveField(16)
  final String text;

  NameValuePair({this.value, required this.text});
}
