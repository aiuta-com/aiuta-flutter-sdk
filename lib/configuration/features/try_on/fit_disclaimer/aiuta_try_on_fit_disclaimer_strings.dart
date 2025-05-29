import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_strings.g.dart';

/// Strings for the Fit Disclaimer feature.
sealed class AiutaTryOnFitDisclaimerStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnFitDisclaimerStrings] with the specified [type].
  AiutaTryOnFitDisclaimerStrings(this.type);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnFitDisclaimerStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnFitDisclaimerStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on fit disclaimer strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnFitDisclaimerStrings`.
///
/// This class represents the default, built-in strings for the Fit Disclaimer feature.
@JsonSerializable()
class AiutaTryOnFitDisclaimerStringsBuiltIn extends AiutaTryOnFitDisclaimerStrings {
  /// Creates an instance of the built-in try-on fit disclaimer strings.
  AiutaTryOnFitDisclaimerStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFitDisclaimerStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnFitDisclaimerStrings`.
///
/// This class allows for custom strings to be provided for the Fit Disclaimer feature.
@JsonSerializable()
class AiutaTryOnFitDisclaimerStringsCustom extends AiutaTryOnFitDisclaimerStrings {
  /// Title for the Fit Disclaimer.
  final String fitDisclaimerTitle;

  /// Description for the Fit Disclaimer.
  final String fitDisclaimerDescription;

  /// Text for the close button in the Fit Disclaimer.
  final String fitDisclaimerButtonClose;

  /// Creates an [AiutaTryOnFitDisclaimerStringsCustom] with the required
  /// [fitDisclaimerTitle] for the bar under the try-on result,
  /// [fitDisclaimerDescription] for the detailed description shown in the
  /// Fit Disclaimer bottom sheet, and [fitDisclaimerButtonClose] for the close button.
  AiutaTryOnFitDisclaimerStringsCustom({
    required this.fitDisclaimerTitle,
    required this.fitDisclaimerDescription,
    required this.fitDisclaimerButtonClose,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFitDisclaimerStringsCustomToJson(this);
}
