import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_settings.g.dart';

@JsonSerializable()
class AiutaActivityIndicatorSettings {
  final int indicationDelay;

  final int spinDuration;

  AiutaActivityIndicatorSettings({
    required this.indicationDelay,
    required this.spinDuration,
  });

  /// Creates a built-in error snackbar colors configuration with default settings.
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
