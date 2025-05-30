import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_icons.g.dart';

/// Icons used in the try-on loading page feature.
sealed class AiutaTryOnLoadingPageIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnLoadingPageIcons] with the specified [type].
  AiutaTryOnLoadingPageIcons(this.type);

  // Internal json staff
  factory AiutaTryOnLoadingPageIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnLoadingPageIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnLoadingPageIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on loading page icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnLoadingPageIcons`.
///
/// This class represents the default, built-in icons for the try-on loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageIconsBuiltIn extends AiutaTryOnLoadingPageIcons {
  /// Creates an instance of the built-in try-on loading page icons.
  AiutaTryOnLoadingPageIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnLoadingPageIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnLoadingPageIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnLoadingPageIcons`.
///
/// This class allows for custom icons to be provided for the try-on loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageIconsCustom extends AiutaTryOnLoadingPageIcons {
  /// Icon for the loading page.
  final AiutaIcon loading14;

  /// Creates an [AiutaTryOnLoadingPageIcons] with the optional [loading14] icon,
  /// that will spin to indicate the loading activity. If not provided,
  /// the system activity indicator will be used.
  AiutaTryOnLoadingPageIconsCustom({
    required this.loading14,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnLoadingPageIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnLoadingPageIconsCustomToJson(this);
}
