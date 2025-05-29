import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_icons.g.dart';

/// Icons used in the try-on feedback feature.
sealed class AiutaTryOnFeedbackIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnFeedbackIcons] with the specified [type].
  AiutaTryOnFeedbackIcons(this.type);

  // Internal json staff
  factory AiutaTryOnFeedbackIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnFeedbackIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnFeedbackIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on feedback icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnFeedbackIcons`.
///
/// This class represents the default, built-in icons for the try-on feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackIconsBuiltIn extends AiutaTryOnFeedbackIcons {
  /// Creates an instance of the built-in try-on feedback icons.
  AiutaTryOnFeedbackIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnFeedbackIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnFeedbackIcons`.
///
/// This class allows for custom icons to be provided for the try-on feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackIconsCustom extends AiutaTryOnFeedbackIcons {
  /// Icon for the feedback button.
  final AiutaIcon like36;

  /// Icon for the "dislike" feedback.
  final AiutaIcon dislike36;

  /// Icon for the gratitude feedback.
  final AiutaIcon gratitude40;

  /// Creates an [AiutaTryOnFeedbackIcons] with the [like36], [dislike36] icons
  /// for feedback button over the try-on result and [gratitude40] for the gratitude
  /// message to the user after providing feedback.
  AiutaTryOnFeedbackIconsCustom({
    required this.like36,
    required this.dislike36,
    required this.gratitude40,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFeedbackIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackIconsCustomToJson(this);
}
