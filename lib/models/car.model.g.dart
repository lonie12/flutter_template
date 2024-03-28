// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as String,
      model: json['model'] as String,
      brand: json['brand'] as String,
      price: json['price'] as String,
      featured: json['featured'] as bool,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'brand': instance.brand,
      'price': instance.price,
      'featured': instance.featured,
      'images': instance.images,
    };
