import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_icons.g.dart';

/// Icons used in the try-on generations history feature.
sealed class AiutaTryOnGenerationsHistoryIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnGenerationsHistoryIcons] with the specified [type].
  AiutaTryOnGenerationsHistoryIcons(this.type);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnGenerationsHistoryIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnGenerationsHistoryIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on generations history icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnGenerationsHistoryIcons`.
///
/// This class represents the default, built-in icons for the try-on generations history feature.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryIconsBuiltIn extends AiutaTryOnGenerationsHistoryIcons {
  /// Creates an instance of the built-in try-on generations history icons.
  AiutaTryOnGenerationsHistoryIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnGenerationsHistoryIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnGenerationsHistoryIcons`.
///
/// This class allows for custom icons to be provided for the try-on generations history feature.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryIconsCustom extends AiutaTryOnGenerationsHistoryIcons {
  /// Icon for the generations history.
  final AiutaIcon history24;

  /// Creates an [AiutaTryOnGenerationsHistoryIcons] with the [history24] icon
  /// for the page bar to enter the generations history gallery.
  AiutaTryOnGenerationsHistoryIconsCustom({
    required this.history24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnGenerationsHistoryIconsCustomToJson(this);
}
