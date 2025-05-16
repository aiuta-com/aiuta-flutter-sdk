import 'package:aiuta_flutter/configuration/features/base/aiuta_data_provider_type.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_data_provider.g.dart';

/// Abstract base class for the share data provider.
///
/// This class defines the structure for data providers that handle share-related
/// operations, such as retrieving share text based on product IDs.
sealed class AiutaShareDataProvider {
  /// The type of the data provider, indicating whether it is built-in or custom.
  AiutaDataProviderType type;

  /// Constructs an [AiutaShareDataProvider] with the specified [type].
  AiutaShareDataProvider(this.type);

  // Internal json staff
  factory AiutaShareDataProvider.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaShareDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown share data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A custom implementation of [AiutaShareDataProvider].
///
/// This class provides a mechanism to retrieve share text based on product IDs
/// using the [getShareText] callback.
@JsonSerializable()
class AiutaShareDataProviderCustom extends AiutaShareDataProvider {
  /// Callback to get the share text based on product IDs.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<String> Function(List<String> productIds) getShareText;

  AiutaShareDataProviderCustom({
    required this.getShareText,
  }) : super(AiutaDataProviderType.custom);

  // Internal json staff
  factory AiutaShareDataProviderCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaShareDataProviderCustomToJson(this);
}
