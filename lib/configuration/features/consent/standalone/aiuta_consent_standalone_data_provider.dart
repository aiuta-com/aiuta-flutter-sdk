import 'package:aiuta_flutter/configuration/features/base/aiuta_data_provider_type.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_data_provider.g.dart';

/// Abstract base class for the Aiuta consent standalone page data provider.
///
/// This class defines the structure for data providers that handle consent-related
/// operations, such as managing obtained consent identifiers and processing user-given consents.
sealed class AiutaConsentStandaloneDataProvider {
  /// The type of the data provider, indicating whether it is built-in or custom.
  AiutaDataProviderType type;

  /// Constructs an [AiutaConsentStandaloneDataProvider] with the specified [type].
  AiutaConsentStandaloneDataProvider(this.type);

  // Internal json staff
  factory AiutaConsentStandaloneDataProvider.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaConsentStandaloneDataProviderBuiltIn.fromJson(json);
      case 'custom':
        return AiutaConsentStandaloneDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown consent data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of [AiutaConsentStandaloneDataProvider].
///
/// This class represents a data provider for the Aiuta consent standalone page
/// that uses a built-in mechanism to handle consent data.
@JsonSerializable()
class AiutaConsentStandaloneDataProviderBuiltIn
    extends AiutaConsentStandaloneDataProvider {
  /// Creates an instance of [AiutaConsentStandaloneDataProviderBuiltIn].
  AiutaConsentStandaloneDataProviderBuiltIn()
      : super(AiutaDataProviderType.builtIn);

  // Internal json staff
  factory AiutaConsentStandaloneDataProviderBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneDataProviderBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneDataProviderBuiltInToJson(this);
}

@JsonSerializable()
class AiutaConsentStandaloneDataProviderCustom
    extends AiutaConsentStandaloneDataProvider {
  /// List of consents identifiers already obtained from the user.
  ///
  /// SDK will match the identifiers with the ones provided in the [AiutaConsentStandaloneData],
  /// and will show the consent screen only if there are missing required consents.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final ValueListenable<List<String>> obtainedConsentsIds;

  /// Callback when the user has given consents and pressed the "Continue" button.
  /// App should store the consents identifiers and provide them in the [obtainedConsentsIds]
  /// property in the future. Otherwise, the SDK will show the consent screen again on next tryOn session.
  ///
  /// [List] of consent identifiers that the user has given will be passed to the callback.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final void Function(List<String>) obtainConsentsIds;

  /// Creates an [AiutaConsentStandaloneDataProvider] with the listenable
  /// [obtainedConsentsIds] list with already obtained consents identifiers and
  /// [obtainConsentsIds] callback to be called when the user has given consents.
  AiutaConsentStandaloneDataProviderCustom({
    required this.obtainedConsentsIds,
    required this.obtainConsentsIds,
  }) : super(AiutaDataProviderType.custom);

  // Internal json staff
  factory AiutaConsentStandaloneDataProviderCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneDataProviderCustomToJson(this);
}
