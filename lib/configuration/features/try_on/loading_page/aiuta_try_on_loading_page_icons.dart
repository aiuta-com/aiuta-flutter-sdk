import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_icons.g.dart';

@JsonSerializable()
class AiutaTryOnLoadingPageIcons {
  /// Icon for the loading status.
  final AiutaIcon loading14;

  AiutaTryOnLoadingPageIcons({
    required this.loading14,
  });

  /// Create a new instance of AiutaTryOnLoadingPageIcons from a json map.
  factory AiutaTryOnLoadingPageIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageIconsToJson(this);
}
