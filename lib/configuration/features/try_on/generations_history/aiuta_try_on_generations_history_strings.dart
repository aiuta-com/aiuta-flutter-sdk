import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_strings.g.dart';

/// Strings used in the generations history feature.
sealed class AiutaTryOnGenerationsHistoryStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnGenerationsHistoryStrings] with the specified [type].
  AiutaTryOnGenerationsHistoryStrings(this.type);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnGenerationsHistoryStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnGenerationsHistoryStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on generations history strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnGenerationsHistoryStrings`.
///
/// This class represents the default, built-in strings for the generations history feature.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryStringsBuiltIn
    extends AiutaTryOnGenerationsHistoryStrings {
  /// Creates an instance of the built-in try-on generations history strings.
  AiutaTryOnGenerationsHistoryStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnGenerationsHistoryStrings`.
///
/// This class allows for custom strings to be provided for the generations history feature.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryStringsCustom
    extends AiutaTryOnGenerationsHistoryStrings {
  /// Title for the generations history page.
  final String generationsHistoryPageTitle;

  /// Creates an [AiutaTryOnGenerationsHistoryStringsCustom] with the
  /// [generationsHistoryPageTitle] string.
  AiutaTryOnGenerationsHistoryStringsCustom({
    required this.generationsHistoryPageTitle,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryStringsCustomToJson(this);
}
