import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_toggles.g.dart';

/// Additional configuration for the product bar.
@JsonSerializable()
class AiutaProductBarToggles {
  /// Whether to apply extra padding for the first product image.
  final bool applyProductFirstImageExtraPadding;

  /// Creates an [AiutaProductBarToggles] with the specified
  /// [applyProductFirstImageExtraPadding] to use in case your first
  /// flatlay product image has no padding internally.
  AiutaProductBarToggles({
    required this.applyProductFirstImageExtraPadding,
  });

  factory AiutaProductBarToggles.builtIn() {
    return AiutaProductBarToggles(
      applyProductFirstImageExtraPadding: false,
    );
  }

  // Internal json staff
  factory AiutaProductBarToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarTogglesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarTogglesToJson(this);
}
