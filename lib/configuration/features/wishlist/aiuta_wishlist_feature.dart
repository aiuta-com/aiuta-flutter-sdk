import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_wishlist_data_provider.dart';
import 'aiuta_wishlist_icons.dart';
import 'aiuta_wishlist_strings.dart';

part 'aiuta_wishlist_feature.g.dart';

@JsonSerializable()
class AiutaWishlistFeature {
  /// Icons used in the wishlist feature.
  final AiutaWishlistIcons icons;

  /// Strings used in the wishlist feature.
  final AiutaWishlistStrings strings;

  /// Data provider for the wishlist feature.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaWishlistDataProvider dataProvider;

  AiutaWishlistFeature({
    required this.icons,
    required this.strings,
    required this.dataProvider,
  });

  /// Create a new instance of AiutaWishlistFeature from a json map.
  factory AiutaWishlistFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWishlistFeatureToJson(this);
}
