import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_icons.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_strings.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_wishlist_feature.g.dart';

/// The optional feature to interact with the host application's wishlist.
/// If not provided, there will be no `like` button in the product card
/// and the generation results.
@JsonSerializable()
class AiutaWishlistFeature {
  /// Icons used in the wishlist feature.
  final AiutaWishlistIcons icons;

  /// Strings used in the wishlist feature.
  final AiutaWishlistStrings strings;

  /// Data provider for the wishlist feature to sync the wishlist
  /// between the SDK and the host application.
  final AiutaWishlistDataProvider dataProvider;

  /// Creates an [AiutaWishlistFeature] with the given [icons], [strings],
  /// and [dataProvider] to sync the wishlist between the SDK and the host application.
  AiutaWishlistFeature({
    required this.icons,
    required this.strings,
    required this.dataProvider,
  });

  // Internal json staff
  factory AiutaWishlistFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaWishlistFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaWishlistFeatureToJson(this);
}
