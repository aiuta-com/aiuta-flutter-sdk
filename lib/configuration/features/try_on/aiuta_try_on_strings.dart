import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_strings.g.dart';

/// Strings for the Try-On feature.
sealed class AiutaTryOnStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnStrings] with the specified [type].
  AiutaTryOnStrings(this.type);

  // Internal json staff
  factory AiutaTryOnStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnStrings`.
///
/// This class represents the default, built-in strings for the Try-On feature.
@JsonSerializable()
class AiutaTryOnStringsBuiltIn extends AiutaTryOnStrings {
  /// Creates an instance of the built-in try-on strings.
  AiutaTryOnStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnStrings`.
///
/// This class allows for custom strings to be provided for the Try-On feature.
@JsonSerializable()
class AiutaTryOnStringsCustom extends AiutaTryOnStrings {
  /// Title for the Try-On page.
  final String tryOnPageTitle;

  /// Text for the Try-On button.
  final String tryOn;

  /// Creates an [AiutaTryOnStringsCustom] with the required [tryOnPageTitle] for the
  /// page and [tryOn] text for the button to start the Try-On process.
  AiutaTryOnStringsCustom({
    required this.tryOnPageTitle,
    required this.tryOn,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnStringsCustomToJson(this);
}
