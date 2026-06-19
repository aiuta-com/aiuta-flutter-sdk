import 'package:aiuta_flutter/configuration/mode/shoes/aiuta_shoes_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_modes.g.dart';

/// Container for per-mode configuration overrides of the Aiuta SDK.
///
/// Modes let integrators tailor specific surfaces (onboarding, image picker)
/// for a particular try-on scenario. Each mode is optional: a `null` value
/// means the corresponding mode is not configured and the default behavior
/// applies.
@JsonSerializable()
class AiutaModes {
  /// Optional overrides for the shoes try-on mode. `null` when not configured.
  @JsonKey(includeIfNull: false)
  final AiutaShoesMode? shoes;

  /// Creates an [AiutaModes] with the optional [shoes] mode overrides.
  AiutaModes({
    this.shoes,
  });

  // Internal json staff
  factory AiutaModes.fromJson(Map<String, dynamic> json) =>
      _$AiutaModesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaModesToJson(this);
}
