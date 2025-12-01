import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_outfit_strings.g.dart';

/// Strings used in the cart outfit feature.
sealed class AiutaTryOnCartOutfitStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnCartOutfitStrings] with the specified [type].
  AiutaTryOnCartOutfitStrings(this.type);

  // Internal json staff
  factory AiutaTryOnCartOutfitStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnCartOutfitStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnCartOutfitStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on cart outfit strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnCartOutfitStrings`.
///
/// This class represents the default, built-in strings for the cart outfit feature.
@JsonSerializable()
class AiutaTryOnCartOutfitStringsBuiltIn extends AiutaTryOnCartOutfitStrings {
  /// Creates an instance of the built-in try-on cart outfit strings.
  AiutaTryOnCartOutfitStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnCartOutfitStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnCartOutfitStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnCartOutfitStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnCartOutfitStrings`.
///
/// This class allows for custom strings to be provided for the cart outfit feature.
@JsonSerializable()
class AiutaTryOnCartOutfitStringsCustom extends AiutaTryOnCartOutfitStrings {
  /// Text for the "Add to Cart Outfit" button.
  final String addToCartOutfit;

  /// Creates an [AiutaTryOnCartOutfitStringsCustom] with the required [addToCartOutfit] text
  /// for the "Add to Cart Outfit" button.
  AiutaTryOnCartOutfitStringsCustom({
    required this.addToCartOutfit,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnCartOutfitStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnCartOutfitStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnCartOutfitStringsCustomToJson(this);
}
