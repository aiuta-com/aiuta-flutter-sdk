import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_strings.g.dart';

/// Strings used in the cart feature.
@JsonSerializable()
class AiutaTryOnCartStrings {
  /// Text for the "Add to Cart" button.
  final String addToCart;

  /// Creates an [AiutaTryOnCartStrings] with the required [addToCart] text
  /// for the "Add to Cart" button.
  AiutaTryOnCartStrings({
    required this.addToCart,
  });

  // Internal json staff
  factory AiutaTryOnCartStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnCartStringsToJson(this);
}
