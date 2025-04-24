import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_toggles.g.dart';

@JsonSerializable()
class AiutaProductBarToggles {
  /// Whether to apply extra padding for the first product image.
  final bool applyProductFirstImageExtraPadding;

  AiutaProductBarToggles({
    required this.applyProductFirstImageExtraPadding,
  });

  /// Create a new instance of AiutaProductBarToggles from a json map.
  factory AiutaProductBarToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarTogglesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaProductBarTogglesToJson(this);
}
