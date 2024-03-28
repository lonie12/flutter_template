import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.model.g.dart';
part 'car.model.freezed.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required String id,
    required String model,
    required String brand,
    required String price,
    required bool featured,
    required List<String> images,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
