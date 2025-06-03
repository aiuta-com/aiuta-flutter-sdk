import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_toggles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
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
  /// Loading page feature with animated loading screen to
  /// indicate that the try-on is being generated.
  final AiutaTryOnLoadingPageFeature loadingPage;

  /// Input image validation feature to filter out invalid images
  /// that are not suitable for the try-on process.
  final AiutaTryOnInputImageValidationFeature inputImageValidation;

  /// Cart feature to handle the user's intention to add the product
  /// used for the try-on to the host app's cart.
  final AiutaTryOnCartFeature cart;

  /// Fit disclaimer feature (optional) to indicate that the result
  /// of the try-on may differ from real life.
  final AiutaTryOnFitDisclaimerFeature? fitDisclaimer;

  /// Feedback feature (optional) to allow the user to provide a
  /// feedback on the try-on result.
  final AiutaTryOnFeedbackFeature? feedback;

  /// Generations history feature (optional) to keep track of the
  /// previous generations with the ability to delete them.
  final AiutaTryOnGenerationsHistoryFeature? generationsHistory;

  /// Try-On with other photo feature (optional) to allow the user
  /// to use a different photo for the try-on with the same product
  /// after seeing the result.
  final AiutaTryOnWithOtherPhotoFeature? otherPhoto;

  /// Toggles for the Try-On feature.
  final AiutaTryOnToggles toggles;

  /// Icons for the Try-On feature.
  final AiutaTryOnIcons icons;

  /// Strings for the Try-On feature.
  final AiutaTryOnStrings strings;

  /// Styles for the Try-On feature.
  final AiutaTryOnStyles styles;

  /// Creates an [AiutaTryOnFeature] with the required [loadingPage] to configure
  /// the the state when the user is waiting for the try-on to be generated,
  /// [inputImageValidation] to check if the input image is valid, and [cart] to
  /// handle thw user intentions to add the product used for the try-on to the cart.
  ///
  /// Optional features include [fitDisclaimer] for indicate that the result of the
  /// try-on may differ from the real life, [feedback] to allow the user to provide
  /// feedback on the try-on result, [generationsHistory] to keep track of the
  /// previous generations, and [otherPhoto] to allow the user to use a different
  /// photo for the try-on with the same product after the seeing the result.
  ///
  /// The [toggles], [icons], [strings], and [styles] parameters are required to
  /// configure the feature's appearance and behavior.
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

  /// Creates a built-in try-on feature configuration with default settings.
  factory AiutaTryOnFeature.builtIn({
    required AiutaTryOnCartHandler cartHandler,
  }) {
    return AiutaTryOnFeature(
      loadingPage: AiutaTryOnLoadingPageFeature.builtIn(),
      inputImageValidation: AiutaTryOnInputImageValidationFeature.builtIn(),
      cart: AiutaTryOnCartFeature.builtIn(
        handler: cartHandler,
      ),
      fitDisclaimer: null,
      feedback: AiutaTryOnFeedbackFeature.builtIn(),
      generationsHistory: AiutaTryOnGenerationsHistoryFeature.builtIn(),
      otherPhoto: AiutaTryOnWithOtherPhotoFeature.builtIn(),
      toggles: AiutaTryOnToggles.builtIn(),
      icons: AiutaTryOnIconsBuiltIn(),
      strings: AiutaTryOnStringsBuiltIn(),
      styles: AiutaTryOnStyles.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaTryOnFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeatureToJson(this);
}
