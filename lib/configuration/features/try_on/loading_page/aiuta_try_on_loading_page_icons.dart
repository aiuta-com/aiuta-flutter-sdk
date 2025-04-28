import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_icons.g.dart';

/// Icons used in the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageIcons {
  /// Icon for the loading status.
  final AiutaIcon loading14;

  /// Creates an [AiutaTryOnLoadingPageIcons] with the [loading14] icon, that
  /// will spin to indicate the loading activity.
  AiutaTryOnLoadingPageIcons({
    required this.loading14,
  });

  // Internal json staff
  factory AiutaTryOnLoadingPageIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageIconsToJson(this);
}
