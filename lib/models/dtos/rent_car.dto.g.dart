// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_car.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RentCarDto _$RentCarDtoFromJson(Map<String, dynamic> json) => RentCarDto(
      duration: json['duration'] as String,
      durationtype: json['durationtype'] as String,
      withDriver: json['withDriver'] as bool,
      city: json['city'] as String,
      vehicleId: json['vehicleId'] as String,
    );

Map<String, dynamic> _$RentCarDtoToJson(RentCarDto instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'durationtype': instance.durationtype,
      'withDriver': instance.withDriver,
      'city': instance.city,
      'vehicleId': instance.vehicleId,
    };
