import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_price.g.dart';

/// Represents product pricing information in the Aiuta platform.
/// In order to display prices, the Aiuta UI [AiutaProductBarTheme] needs to be configured with a [AiutaProductBarPrices].
@JsonSerializable()
class AiutaProductPrice {
  /// The localized current price of the product.
  /// Should be formatted as a string with the currency symbol and the amount.
  final String current;

  /// Optional. The localized old price of the product.
  /// Should be formatted as a string with the currency symbol and the amount.
  /// The old price will be displayed as a strikethrough near the current price.
  final String? old;

  /// Creates a new instance of AiutaProductPrice to pass the information about a product price in the Aiuta platform.
  ///
  /// The [current] price is required and should be formatted as a string with the currency symbol and the amount.
  /// The [old] price is optional and should also be formatted as a string with the currency symbol and the amount.
  AiutaProductPrice({
    required this.current,
    this.old,
  });

  // Internal json staff
  factory AiutaProductPrice.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductPriceFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductPriceToJson(this);
}
