// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaProduct _$AiutaProductFromJson(Map<String, dynamic> json) => AiutaProduct(
      id: json['id'] as String,
      title: json['title'] as String,
      brand: json['brand'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      price: json['price'] == null
          ? null
          : AiutaProductPrice.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaProductToJson(AiutaProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'brand': instance.brand,
      'imageUrls': instance.imageUrls,
      'price': instance.price,
    };
