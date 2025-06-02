import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_icons.g.dart';

/// Icons used in the try-on fit disclaimer feature.
sealed class AiutaTryOnFitDisclaimerIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnFitDisclaimerIcons] with the specified [type].
  AiutaTryOnFitDisclaimerIcons(this.type);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaTryOnFitDisclaimerIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on fit disclaimer icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A custom implementation of the `AiutaTryOnFitDisclaimerIcons`.
///
/// This class allows for custom icons to be provided for the try-on fit disclaimer feature.
@JsonSerializable()
class AiutaTryOnFitDisclaimerIconsCustom extends AiutaTryOnFitDisclaimerIcons {
  /// Icon for the fit disclaimer.
  final AiutaIcon info20;

  /// Creates an [AiutaTryOnFitDisclaimerIcons] with the optional [info20]
  /// for the Fit Disclaimer.
  AiutaTryOnFitDisclaimerIconsCustom({
    required this.info20,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFitDisclaimerIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFitDisclaimerIconsCustomToJson(this);
}
