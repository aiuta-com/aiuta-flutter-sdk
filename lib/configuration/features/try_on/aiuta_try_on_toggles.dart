import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_toggles.g.dart';

/// Toggles for the Try-On feature.
@JsonSerializable()
class AiutaTryOnToggles {
  /// Whether background execution is allowed.
  /// When the user closes the SDK while the try-on is being generated,
  /// the try-on will continue to be generated in the background if
  /// [isBackgroundExecutionAllowed] is true.
  ///
  /// Otherwise the SDK will stop the try-on operation status checking,
  /// will not show the result and will not add the try-on result to the
  /// generations history.
  ///
  /// Note: That the try-on will be completed on the server side in any case.
  final bool isBackgroundExecutionAllowed;

  /// Creates an [AiutaTryOnToggles] with the required [isBackgroundExecutionAllowed]
  /// to configure if the try-on feature can be executed in the background after
  /// the user closes the SDK while the try-on is being generated.
  AiutaTryOnToggles({
    required this.isBackgroundExecutionAllowed,
  });

  /// Creates a built-in try-on toggles configuration with default settings.
  factory AiutaTryOnToggles.builtIn() {
    return AiutaTryOnToggles(
      isBackgroundExecutionAllowed: false,
    );
  }

  // Internal json staff
  factory AiutaTryOnToggles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnTogglesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnTogglesToJson(this);
}
