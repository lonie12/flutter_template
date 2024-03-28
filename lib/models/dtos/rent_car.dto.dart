import 'package:json_annotation/json_annotation.dart';

part 'rent_car.dto.g.dart';

@JsonSerializable()
class RentCarDto {
  RentCarDto({
    required this.duration,
    required this.durationtype,
    required this.withDriver,
    required this.city,
    required this.vehicleId,
  });

  final String duration;
  final String durationtype;
  final bool withDriver;
  final String city;
  final String vehicleId;

  Map<String, dynamic> toJson() => {
        'duration': duration,
        'durationtype': durationtype,
        'withDriver': withDriver,
        'city': city,
        'vehicleId': vehicleId,
      };
}
