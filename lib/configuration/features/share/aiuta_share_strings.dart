import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_strings.g.dart';

/// Strings used in the share feature.
sealed class AiutaShareStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaShareStrings] with the specified [type].
  AiutaShareStrings(this.type);

  // Internal json staff
  factory AiutaShareStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShareStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaShareStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown share strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaShareStrings`.
///
/// This class represents the default, built-in strings for the share feature.
@JsonSerializable()
class AiutaShareStringsBuiltIn extends AiutaShareStrings {
  /// Creates an instance of the built-in share strings.
  AiutaShareStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShareStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaShareStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaShareStrings`.
///
/// This class allows for custom strings to be provided for the share feature.
@JsonSerializable()
class AiutaShareStringsCustom extends AiutaShareStrings {
  /// Text for the share button.
  final String shareButton;

  /// Creates an [AiutaShareStringsCustom] with the given [shareButton] text.
  AiutaShareStringsCustom({
    required this.shareButton,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShareStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaShareStringsCustomToJson(this);
}
