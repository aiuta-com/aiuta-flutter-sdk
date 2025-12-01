import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_outfit_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_strings.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_feature.g.dart';

/// Cart feature to handle the user's intention to add the product
/// used for the try-on to the host app's cart.
@JsonSerializable()
class AiutaTryOnCartFeature {
  /// Outfit feature to handle adding multiple products to cart (optional).
  final AiutaTryOnCartOutfitFeature? outfit;

  /// Strings used in the cart feature.
  final AiutaTryOnCartStrings strings;

  /// Handler for the cart feature.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaTryOnCartHandler handler;

  /// Creates an [AiutaTryOnCartFeature] with the required [strings] and
  /// [handler] to add the product used for the try-on to the host app's cart.
  /// Optionally, [outfit] can be provided to handle adding multiple products.
  AiutaTryOnCartFeature({
    this.outfit,
    required this.strings,
    required this.handler,
  });

  /// Creates a built-in try-on cart feature configuration with default settings.
  factory AiutaTryOnCartFeature.builtIn({
    required AiutaTryOnCartHandler handler,
  }) {
    return AiutaTryOnCartFeature(
      strings: AiutaTryOnCartStringsBuiltIn(),
      handler: handler,
    );
  }

  // Internal json staff
  factory AiutaTryOnCartFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnCartFeatureToJson(this);
}
