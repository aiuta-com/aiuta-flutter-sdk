import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_outfit_handler.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_outfit_strings.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_outfit_feature.g.dart';

/// Cart outfit feature to handle the user's intention to add multiple products
/// used for the try-on to the host app's cart.
@JsonSerializable()
class AiutaTryOnCartOutfitFeature {
  /// Strings used in the cart outfit feature.
  final AiutaTryOnCartOutfitStrings strings;

  /// Handler for the cart outfit feature.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaTryOnCartOutfitHandler handler;

  /// Creates an [AiutaTryOnCartOutfitFeature] with the required [strings] and
  /// [handler] to add multiple products used for the try-on to the host app's cart.
  AiutaTryOnCartOutfitFeature({
    required this.strings,
    required this.handler,
  });

  /// Creates a built-in try-on cart outfit feature configuration with default settings.
  factory AiutaTryOnCartOutfitFeature.builtIn({
    required AiutaTryOnCartOutfitHandler handler,
  }) {
    return AiutaTryOnCartOutfitFeature(
      strings: AiutaTryOnCartOutfitStringsBuiltIn(),
      handler: handler,
    );
  }

  // Internal json staff
  factory AiutaTryOnCartOutfitFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartOutfitFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnCartOutfitFeatureToJson(this);
}
