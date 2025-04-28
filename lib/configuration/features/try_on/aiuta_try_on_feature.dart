import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_toggles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feature.g.dart';

/// The main feature for the virtual try-on functionality.
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

  // Internal json staff
  factory AiutaTryOnFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeatureToJson(this);
}
