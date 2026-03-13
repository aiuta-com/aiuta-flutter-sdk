import 'package:json_annotation/json_annotation.dart';

part 'aiuta_experimental_settings.g.dart';

/// Experimental settings for the Aiuta SDK.
///
/// Contains opt-in settings for features that are not yet stable or that
/// change default platform behavior. Use with caution — these settings
/// may change or be removed in future releases.
@JsonSerializable()
class AiutaExperimentalSettings {
  /// When `true`, links opened by the SDK will use Android Custom Tabs
  /// instead of the default system browser intent. This prevents Android
  /// App Links from intercepting URLs and always opens them inside the app.
  /// Defaults to `false`.
  final bool shouldOpenLinksInCustomTab;

  /// Creates an [AiutaExperimentalSettings].
  AiutaExperimentalSettings({
    required this.shouldOpenLinksInCustomTab,
  });

  /// Creates a default experimental settings configuration.
  factory AiutaExperimentalSettings.builtIn() {
    return AiutaExperimentalSettings(
      shouldOpenLinksInCustomTab: false,
    );
  }

  // Internal json staff
  factory AiutaExperimentalSettings.fromJson(Map<String, dynamic> json) =>
      _$AiutaExperimentalSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaExperimentalSettingsToJson(this);
}
