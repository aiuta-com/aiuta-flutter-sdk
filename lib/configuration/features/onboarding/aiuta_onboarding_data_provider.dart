import 'package:aiuta_flutter/configuration/features/base/aiuta_data_provider_type.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_data_provider.g.dart';

/// This class provides the data needed for the onboarding process in the Aiuta app.
sealed class AiutaOnboardingDataProvider {
  /// The type of the data provider, indicating whether it is built-in or custom.
  AiutaDataProviderType type;

  /// Constructs an [AiutaOnboardingDataProvider] with the specified [type].
  AiutaOnboardingDataProvider(this.type);

  // Internal json staff
  factory AiutaOnboardingDataProvider.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaOnboardingDataProviderBuiltIn.fromJson(json);
      case 'custom':
        return AiutaOnboardingDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown onboarding data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the [AiutaOnboardingDataProvider].
///
/// This class represents the default onboarding data provider that is
/// built into the Aiuta SDK. It does not require any custom behavior
/// or additional configuration.
@JsonSerializable()
class AiutaOnboardingDataProviderBuiltIn extends AiutaOnboardingDataProvider {
  /// Creates an instance of [AiutaOnboardingDataProviderBuiltIn].
  AiutaOnboardingDataProviderBuiltIn() : super(AiutaDataProviderType.builtIn);

  // Internal json staff
  factory AiutaOnboardingDataProviderBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingDataProviderBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingDataProviderBuiltInToJson(this);
}

/// A custom implementation of the [AiutaOnboardingDataProvider].
///
/// This class allows for custom behavior during the onboarding process.
/// It provides a [ValueListenable] to track whether onboarding is completed
/// and a callback to handle the completion of onboarding.
@JsonSerializable()
class AiutaOnboardingDataProviderCustom extends AiutaOnboardingDataProvider {
  /// A [ValueListenable] bool that indicates whether the onboarding process
  /// has been completed and it should not be shown again.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final ValueListenable<bool> isOnboardingCompleted;

  /// A callback function that is called when the onboarding process is completed.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final void Function() completeOnboarding;

  /// Creates an [AiutaOnboardingDataProviderCustom] with the listenable [isOnboardingCompleted]
  /// indicating whether the onboarding process has been completed and the
  /// callback [completeOnboarding] that is called when the onboarding
  /// process is completed.
  AiutaOnboardingDataProviderCustom({
    required this.isOnboardingCompleted,
    required this.completeOnboarding,
  }) : super(AiutaDataProviderType.custom);

  // Internal json staff
  factory AiutaOnboardingDataProviderCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingDataProviderCustomToJson(this);
}
