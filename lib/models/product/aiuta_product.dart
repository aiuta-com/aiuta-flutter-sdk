import 'package:aiuta_flutter/models/product/aiuta_product_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product.g.dart';

/// Represents the information about a product in the Aiuta platform.
@JsonSerializable()
class AiutaProduct {
  /// A unique identifier for the product.
  final String id;

  /// The localized title of the product.
  final String title;

  /// The brand name of the product.
  final String brand;

  /// A list of URLs pointing to the images of the product.
  /// Flatlay should be the first image in the list.
  final List<String> imageUrls;

  /// Optional price information for the product.
  /// In order to display prices, the Aiuta UI [AiutaProductBarTheme] needs to be configured with a [AiutaProductBarPrices].
  final AiutaProductPrice? price;

  /// Creates a new instance of AiutaProduct to pass the information about a product to the Aiuta platform.
  ///
  /// The [id], [title], [brand], and [imageUrls] parameters are required. [imageUrls] should contain at least one URL.
  /// The [price] is optional, and if not provided, the product title will have more space to display.
  /// In order to display prices, the Aiuta UI [AiutaProductBarTheme] needs to be configured with a [AiutaProductBarPrices].
  AiutaProduct({
    required this.id,
    required this.title,
    required this.brand,
    required this.imageUrls,
    this.price = null,
  });

  // Internal json staff
  factory AiutaProduct.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductToJson(this);
}
