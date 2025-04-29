import 'package:aiuta_flutter/src/models/actions/aiuta_action_type.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_action.g.dart';

sealed class AiutaAction {
  AiutaActionType type;

  AiutaAction(this.type);

  factory AiutaAction.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'addToCartClick':
        return AddToCartAction.fromJson(json);
      case 'addToWishlistClick':
        return AddToWishlistAction.fromJson(json);
      default:
        throw Exception('Unknown action type');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class AddToCartAction extends AiutaAction {
  final String productId;

  AddToCartAction({
    required this.productId,
  }) : super(AiutaActionType.addToCartClick);

  factory AddToCartAction.fromJson(Map<String, dynamic> json) =>
      _$AddToCartActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddToCartActionToJson(this);
}

@JsonSerializable()
class AddToWishlistAction extends AiutaAction {
  final String productId;
  final bool isInWishlist;

  AddToWishlistAction({
    required this.productId,
    required this.isInWishlist,
  }) : super(AiutaActionType.addToWishlistClick);

  factory AddToWishlistAction.fromJson(Map<String, dynamic> json) =>
      _$AddToWishlistActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddToWishlistActionToJson(this);
}
