import 'package:aiuta_flutter/configuration/mode/shoes/onboarding/aiuta_shoes_mode_onboarding_page.dart';
import 'package:aiuta_flutter/configuration/mode/shoes/picker/aiuta_shoes_mode_image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode.g.dart';

/// Configuration overrides applied when the SDK runs in shoes try-on mode.
@JsonSerializable()
class AiutaShoesMode {
  /// Overrides for the onboarding "best results" page.
  final AiutaShoesModeOnboardingPage onboardingShoesPage;

  /// Overrides for the image picker surfaces.
  final AiutaShoesModeImagePicker imagePicker;

  /// Creates an [AiutaShoesMode] with the [onboardingShoesPage] and
  /// [imagePicker] overrides used in shoes try-on mode.
  AiutaShoesMode({
    required this.onboardingShoesPage,
    required this.imagePicker,
  });

  // Internal json staff
  factory AiutaShoesMode.fromJson(Map<String, dynamic> json) =>
      _$AiutaShoesModeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShoesModeToJson(this);
}
