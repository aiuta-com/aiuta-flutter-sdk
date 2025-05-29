import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_strings.g.dart';

/// Strings used in the `powered by` bar.
sealed class AiutaPowerBarStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaPowerBarStrings] with the specified [type].
  AiutaPowerBarStrings(this.type);

  // Internal json staff
  factory AiutaPowerBarStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaPowerBarStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaPowerBarStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown power bar strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaPowerBarStrings`.
///
/// This class represents the default, built-in strings for the power bar feature.
@JsonSerializable()
class AiutaPowerBarStringsBuiltIn extends AiutaPowerBarStrings {
  /// Creates an instance of the built-in power bar strings.
  AiutaPowerBarStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaPowerBarStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaPowerBarStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaPowerBarStrings`.
///
/// This class allows for custom strings to be provided for the power bar feature.
@JsonSerializable()
class AiutaPowerBarStringsCustom extends AiutaPowerBarStrings {
  /// Text for the "Powered by Aiuta" label.
  final String poweredByAiuta;

  /// Creates an [AiutaPowerBarStringsCustom] with the given [poweredByAiuta] text.
  AiutaPowerBarStringsCustom({
    required this.poweredByAiuta,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaPowerBarStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaPowerBarStringsCustomToJson(this);
}
