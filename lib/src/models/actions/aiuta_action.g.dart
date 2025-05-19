// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartAction _$AddToCartActionFromJson(Map<String, dynamic> json) =>
    AddToCartAction(
      productId: json['productId'] as String,
    )..type = $enumDecode(_$AiutaActionTypeEnumMap, json['type']);

Map<String, dynamic> _$AddToCartActionToJson(AddToCartAction instance) =>
    <String, dynamic>{
      'type': _$AiutaActionTypeEnumMap[instance.type]!,
      'productId': instance.productId,
    };

const _$AiutaActionTypeEnumMap = {
  AiutaActionType.addToCartClick: 'addToCartClick',
  AiutaActionType.addToWishlistClick: 'addToWishlistClick',
};

AddToWishlistAction _$AddToWishlistActionFromJson(Map<String, dynamic> json) =>
    AddToWishlistAction(
      productId: json['productId'] as String,
      isInWishlist: json['isInWishlist'] as bool,
    )..type = $enumDecode(_$AiutaActionTypeEnumMap, json['type']);

Map<String, dynamic> _$AddToWishlistActionToJson(
        AddToWishlistAction instance) =>
    <String, dynamic>{
      'type': _$AiutaActionTypeEnumMap[instance.type]!,
      'productId': instance.productId,
      'isInWishlist': instance.isInWishlist,
    };
