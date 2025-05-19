import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_strings.g.dart';

/// Strings used in the share feature.
@JsonSerializable()
class AiutaShareStrings {
  /// Text for the share button.
  final String shareButton;

  /// Creates an [AiutaShareStrings] with the given [shareButton] text.
  AiutaShareStrings({
    required this.shareButton,
  });

  // Internal json staff
  factory AiutaShareStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShareStringsToJson(this);
}
