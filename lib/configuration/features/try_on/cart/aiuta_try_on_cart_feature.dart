import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_cart_handler.dart';
import 'aiuta_try_on_cart_strings.dart';

part 'aiuta_try_on_cart_feature.g.dart';

@JsonSerializable()
class AiutaTryOnCartFeature {
  /// Strings used in the cart feature.
  final AiutaTryOnCartStrings strings;

  /// Handler for the cart feature.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaTryOnCartHandler handler;

  AiutaTryOnCartFeature({
    required this.strings,
    required this.handler,
  });

  /// Create a new instance of AiutaTryOnCartFeature from a json map.
  factory AiutaTryOnCartFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnCartFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnCartFeatureToJson(this);
}
