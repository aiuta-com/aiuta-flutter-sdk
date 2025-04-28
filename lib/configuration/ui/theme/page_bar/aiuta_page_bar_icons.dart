import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_icons.g.dart';

/// This class represents the icons used in the Aiuta page bar.
@JsonSerializable()
class AiutaPageBarIcons {
  /// Back icon with size 24.
  final AiutaIcon back24;

  /// Close icon with size 24.
  final AiutaIcon close24;

  /// Creates an [AiutaPageBarIcons] with the specified icons
  /// for the navigation between pages.
  AiutaPageBarIcons({
    required this.back24,
    required this.close24,
  });

  // Internal json staff
  factory AiutaPageBarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPageBarIconsToJson(this);
}
