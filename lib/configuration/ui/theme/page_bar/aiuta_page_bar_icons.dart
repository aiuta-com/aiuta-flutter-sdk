import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_icons.g.dart';

@JsonSerializable()
class AiutaPageBarIcons {
  /// Back icon with size 24.
  final AiutaIcon back24;

  /// Close icon with size 24.
  final AiutaIcon close24;

  AiutaPageBarIcons({
    required this.back24,
    required this.close24,
  });

  /// Create a new instance of AiutaPageBarIcons from a json map.
  factory AiutaPageBarIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPageBarIconsToJson(this);
}