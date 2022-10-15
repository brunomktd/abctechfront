import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
    required DateTime dateTime,
    required double latitude,
    required double longitude,
  }) = _Location;

  Map<String, dynamic> toMap() => {
        "dateTime": dateTime.toIso8601String(),
        "latitude": latitude,
        "longitude": longitude,
      };

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
