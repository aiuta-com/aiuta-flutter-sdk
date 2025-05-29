import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_strings.g.dart';

/// Strings used in the cart feature.
sealed class AiutaTryOnCartStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnCartStrings] with the specified [type].
  AiutaTryOnCartStrings(this.type);

  // Internal json staff
  factory AiutaTryOnCartStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnCartStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnCartStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on cart strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnCartStrings`.
///
/// This class represents the default, built-in strings for the cart feature.
@JsonSerializable()
class AiutaTryOnCartStringsBuiltIn extends AiutaTryOnCartStrings {
  /// Creates an instance of the built-in try-on cart strings.
  AiutaTryOnCartStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnCartStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnCartStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnCartStrings`.
///
/// This class allows for custom strings to be provided for the cart feature.
@JsonSerializable()
class AiutaTryOnCartStringsCustom extends AiutaTryOnCartStrings {
  /// Text for the "Add to Cart" button.
  final String addToCart;

  /// Creates an [AiutaTryOnCartStringsCustom] with the required [addToCart] text
  /// for the "Add to Cart" button.
  AiutaTryOnCartStringsCustom({
    required this.addToCart,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnCartStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnCartStringsCustomToJson(this);
}
