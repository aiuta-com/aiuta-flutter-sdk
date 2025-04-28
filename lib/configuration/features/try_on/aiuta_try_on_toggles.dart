import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_toggles.g.dart';

@JsonSerializable()
class AiutaTryOnToggles {
  /// Whether background execution is allowed.
  final bool isBackgroundExecutionAllowed;

  AiutaTryOnToggles({
    required this.isBackgroundExecutionAllowed,
  });

  // Internal json staff
  factory AiutaTryOnToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnTogglesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnTogglesToJson(this);
}
