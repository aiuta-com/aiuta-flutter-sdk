import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_icons.dart';
import 'aiuta_try_on_strings.dart';
import 'aiuta_try_on_styles.dart';
import 'aiuta_try_on_toggles.dart';
import 'cart/aiuta_try_on_cart_feature.dart';
import 'feedback/aiuta_try_on_feedback_feature.dart';
import 'fit_disclaimer/aiuta_try_on_fit_disclaimer_feature.dart';
import 'generations_history/aiuta_try_on_generations_history_feature.dart';
import 'input_image_validation/aiuta_try_on_input_image_validation_feature.dart';
import 'loading_page/aiuta_try_on_loading_page_feature.dart';
import 'other_photo/aiuta_try_on_with_other_photo_feature.dart';

part 'aiuta_try_on_feature.g.dart';

@JsonSerializable()
class AiutaTryOnFeature {
  /// Loading page feature.
  final AiutaTryOnLoadingPageFeature loadingPage;

  /// Input image validation feature.
  final AiutaTryOnInputImageValidationFeature inputImageValidation;

  /// Cart feature.
  final AiutaTryOnCartFeature cart;

  /// Fit disclaimer feature (nullable).
  final AiutaTryOnFitDisclaimerFeature? fitDisclaimer;

  /// Feedback feature (nullable).
  final AiutaTryOnFeedbackFeature? feedback;

  /// Generations history feature (nullable).
  final AiutaTryOnGenerationsHistoryFeature? generationsHistory;

  /// Try-On with other photo feature (nullable).
  final AiutaTryOnWithOtherPhotoFeature? otherPhoto;

  /// Toggles for the Try-On feature.
  final AiutaTryOnToggles toggles;

  /// Icons for the Try-On feature.
  final AiutaTryOnIcons icons;

  /// Strings for the Try-On feature.
  final AiutaTryOnStrings strings;

  /// Styles for the Try-On feature.
  final AiutaTryOnStyles styles;

  AiutaTryOnFeature({
    required this.loadingPage,
    required this.inputImageValidation,
    required this.cart,
    this.fitDisclaimer,
    this.feedback,
    this.generationsHistory,
    this.otherPhoto,
    required this.toggles,
    required this.icons,
    required this.strings,
    required this.styles,
  });

  /// Create a new instance of AiutaTryOnFeature from a json map.
  factory AiutaTryOnFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFeatureToJson(this);
}
