import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_grabber.g.dart';

@JsonSerializable()
class AiutaBottomSheetGrabber {
  /// Grabber width.
  final double width;

  /// Top padding for the grabber.
  final double topPadding;

  AiutaBottomSheetGrabber({
    required this.width,
    required this.topPadding,
  });

  /// Create a new instance of AiutaBottomSheetGrabber from a json map.
  factory AiutaBottomSheetGrabber.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetGrabberFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaBottomSheetGrabberToJson(this);
}