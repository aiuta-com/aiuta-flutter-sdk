import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_cart_strings.g.dart';

@JsonSerializable()
class AiutaTryOnCartStrings {
  /// Text for the "Add to Cart" button.
  final String addToCart;

  AiutaTryOnCartStrings({
    required this.addToCart,
  });

  /// Create a new instance of AiutaTryOnCartStrings from a json map.
  factory AiutaTryOnCartStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnCartStringsToJson(this);
}
