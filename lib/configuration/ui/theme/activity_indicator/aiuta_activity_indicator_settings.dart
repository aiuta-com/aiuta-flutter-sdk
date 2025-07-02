import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_settings.g.dart';

/// A model representing the settings for the Aiuta activity indicator.
///
/// [indicationDelay] is the delay in milliseconds before the indicator is shown.
/// [spinDuration] is the duration in milliseconds for the spinning animation.
@JsonSerializable()
class AiutaActivityIndicatorSettings {
  /// The delay in milliseconds before the activity indicator appears.
  final int indicationDelay;

  /// The duration in milliseconds for the spinning animation.
  final int spinDuration;

  /// Creates an [AiutaActivityIndicatorSettings] instance.
  ///
  /// Both [indicationDelay] and [spinDuration] are required.
  AiutaActivityIndicatorSettings({
    required this.indicationDelay,
    required this.spinDuration,
  });

  /// Creates a built-in activity indicator settings configuration with default values.
  ///
  /// Defaults: [indicationDelay] = 1000, [spinDuration] = 2000.
  factory AiutaActivityIndicatorSettings.builtIn() {
    return AiutaActivityIndicatorSettings(
      indicationDelay: 1000,
      spinDuration: 2000,
    );
  }

  // Internal json staff
  factory AiutaActivityIndicatorSettings.fromJson(Map<String, dynamic> json) =>
      _$AiutaActivityIndicatorSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaActivityIndicatorSettingsToJson(this);
}
