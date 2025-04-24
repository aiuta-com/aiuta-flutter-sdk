import 'package:aiuta_flutter/configuration/debug/aiuta_validation_policy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_debug_settings.g.dart';

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

  /// Constructor for AiutaDebugSettings.
  /// Parameters:
  /// - [isLoggingEnabled]: Whether logging is enabled.
  /// - [emptyStringsPolicy]: Policy for handling empty strings.
  /// - [unavailableResourcesPolicy]: Policy for handling unavailable resources.
  /// - [infoPlistDescriptionsPolicy]: Policy for handling missing Info.plist descriptions.
  /// - [listSizePolicy]: Policy for handling list size validation.
  AiutaDebugSettings({
    required this.isLoggingEnabled,
    required this.emptyStringsPolicy,
    required this.unavailableResourcesPolicy,
    required this.infoPlistDescriptionsPolicy,
    required this.listSizePolicy,
  });

  /// Create a new instance of AiutaDebugSettings from a json map.
  factory AiutaDebugSettings.fromJson(Map<String, dynamic> json) =>
      _$AiutaDebugSettingsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaDebugSettingsToJson(this);
}
