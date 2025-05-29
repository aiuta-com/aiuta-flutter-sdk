import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_icons.g.dart';

/// This class represents the icons used in the Aiuta page bar.
sealed class AiutaPageBarIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaPageBarIcons] with the specified [type].
  AiutaPageBarIcons(this.type);

  // Internal json staff
  factory AiutaPageBarIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaPageBarIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaPageBarIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown page bar icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaPageBarIcons`.
///
/// This class represents the default, built-in icons for the page bar.
@JsonSerializable()
class AiutaPageBarIconsBuiltIn extends AiutaPageBarIcons {
  /// Creates an instance of the built-in page bar icons.
  AiutaPageBarIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaPageBarIconsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaPageBarIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaPageBarIcons`.
///
/// This class allows for custom icons to be provided for the page bar.
@JsonSerializable()
class AiutaPageBarIconsCustom extends AiutaPageBarIcons {
  /// Back icon with size 24.
  final AiutaIcon back24;

  /// Close icon with size 24.
  final AiutaIcon close24;

  /// Creates an [AiutaPageBarIconsCustom] with the specified icons
  /// for the navigation between pages.
  AiutaPageBarIconsCustom({
    required this.back24,
    required this.close24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaPageBarIconsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaPageBarIconsCustomToJson(this);
}
