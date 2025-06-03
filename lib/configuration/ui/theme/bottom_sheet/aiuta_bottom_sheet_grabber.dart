import 'package:json_annotation/json_annotation.dart';

part 'aiuta_bottom_sheet_grabber.g.dart';

/// Configuration for the grabber of the bottom sheet.
@JsonSerializable()
class AiutaBottomSheetGrabber {
  /// Grabber width.
  final double width;

  /// Grabber width.
  final double height;

  /// Top padding for the grabber.
  final double topPadding;

  /// Creates an [AiutaBottomSheetGrabber] with the [width] and [topPadding].
  AiutaBottomSheetGrabber({
    required this.width,
    required this.height,
    required this.topPadding,
  });

  /// Creates a built-in bottom sheet grabber configuration with default settings.
  factory AiutaBottomSheetGrabber.builtIn() {
    return AiutaBottomSheetGrabber(
      width: 36,
      height: 4,
      topPadding: 6,
    );
  }

  // Internal json staff
  factory AiutaBottomSheetGrabber.fromJson(Map<String, dynamic> json) =>
      _$AiutaBottomSheetGrabberFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaBottomSheetGrabberToJson(this);
}
