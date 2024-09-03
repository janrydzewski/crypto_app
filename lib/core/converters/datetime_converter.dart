import 'package:freezed_annotation/freezed_annotation.dart';

// This converter is used to convert DateTime to int and int to DateTime
class DatetimeConverter implements JsonConverter<DateTime, int> {
  const DatetimeConverter();

  @override
  DateTime fromJson(int? timestamp) {
    if(timestamp == null) {
      return DateTime.now();
    }
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  int toJson(DateTime date) => date.millisecondsSinceEpoch;
}
