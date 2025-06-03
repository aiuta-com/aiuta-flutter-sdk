import 'package:aiuta_flutter/configuration/debug/aiuta_validation_policy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_debug_settings.g.dart';

/// This class is used to configure the debug settings of the Aiuta SDK.
/// It contains the logging settings and validation policies for various parameters.
@JsonSerializable()
class AiutaDebugSettings {
  /// Whether logging is enabled.
  final bool isLoggingEnabled;

  /// Policy for handling empty strings.
  final AiutaValidationPolicy emptyStringsPolicy;

  /// Policy for handling unavailable resources.
  final AiutaValidationPolicy unavailableResourcesPolicy;

  /// Policy for handling missing Info.plist descriptions.
  final AiutaValidationPolicy infoPlistDescriptionsPolicy;

  /// Policy for handling list size validation.
  final AiutaValidationPolicy listSizePolicy;

  /// Creates an [AiutaDebugSettings] with the [isLoggingEnabled] to enable or
  /// disable logging, [emptyStringsPolicy] to validate if required strings are
  /// not empty, [unavailableResourcesPolicy] to validate if graphics resources
  /// that are passed by path are available, [infoPlistDescriptionsPolicy] to
  /// validate if the Info.plist contains the required descriptions, and
  /// [listSizePolicy] to validate if the list sizes of configurations are
  /// in valid range.
  AiutaDebugSettings({
    required this.isLoggingEnabled,
    required this.emptyStringsPolicy,
    required this.unavailableResourcesPolicy,
    required this.infoPlistDescriptionsPolicy,
    required this.listSizePolicy,
  });

  /// Creates a built-in debug settings configuration with default values.
  factory AiutaDebugSettings.builtIn() {
    return AiutaDebugSettings(
      isLoggingEnabled: false,
      emptyStringsPolicy: AiutaValidationPolicy.warning,
      unavailableResourcesPolicy: AiutaValidationPolicy.warning,
      infoPlistDescriptionsPolicy: AiutaValidationPolicy.warning,
      listSizePolicy: AiutaValidationPolicy.warning,
    );
  }

  // Internal json staff
  factory AiutaDebugSettings.fromJson(Map<String, dynamic> json) =>
      _$AiutaDebugSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaDebugSettingsToJson(this);
}
