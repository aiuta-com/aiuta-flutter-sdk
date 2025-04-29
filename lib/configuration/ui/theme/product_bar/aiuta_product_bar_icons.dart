import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_product_bar_icons.g.dart';

/// Configuration for the product bar icons.
@JsonSerializable()
class AiutaProductBarIcons {
  /// Icon for the arrow.
  final AiutaIcon arrow16;

  /// Creates an [AiutaProductBarIcons] with the [arrow16] icon that indicates
  /// that the product bar is expandable to show more information in the bottom
  /// sheet.
  AiutaProductBarIcons({
    required this.arrow16,
  });

  // Internal json staff
  factory AiutaProductBarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaProductBarIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaProductBarIconsToJson(this);
}
