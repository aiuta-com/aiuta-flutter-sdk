import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/configuration/features/welcome_screen/aiuta_welcome_screen_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_features.g.dart';

/// This class is used to manage the features of the Aiuta SDK.
@JsonSerializable()
class AiutaFeatures {
  /// Represents the optional welcome screen feature, shown when the SDK is opened
  /// for the first time. It depends on the onboarding completion; if the [onboarding]
  /// is not provided, the welcome screen will always be shown unless the SDK
  /// configured without it by yourself.
  final AiutaWelcomeScreenFeature? welcomeScreen;

  /// Feature for the onboarding screen (optional).
  /// If not provided, the onboarding will not be shown.
  /// The onboarding feature is used to show the user how the virtual try-on works.
  final AiutaOnboardingFeature? onboarding;

  /// Feature for the consent screen (optional).
  /// If not provided, the consent will not be requested from the user.
  /// The consent can be embedded into the onboarding or displayed as a standalone page.
  ///
  /// To embed the consent into the onboarding, use [AiutaConsentEmbeddedIntoOnboardingFeature].
  ///
  /// To display the consent as a standalone page, use [AiutaConsentStandaloneOnboardingPageFeature]
  /// to display as the last page of the onboarding if it is enabled, or as a separate page otherwise.
  ///
  /// To display the consent as a standalone page in the bottom sheet over the image picker,
  /// when the user taps on the "Upload a photo" button, use [AiutaConsentStandaloneImagePickerPageFeature].
  final AiutaConsentFeature? consent;

  /// Configuration for the image picker feature (currently main screen).
  /// This feature allows users to select images from the camera, photo gallery,
  /// predefined models, and view their upload history.
  final AiutaImagePickerFeature imagePicker;

  /// The main feature for the virtual try-on functionality.
  final AiutaTryOnFeature tryOn;

  /// The optional feature adds the ability to share generated images from
  /// the SDK using the native share dialog.
  final AiutaShareFeature? share;

  /// The optional feature to interact with the host application's wishlist.
  /// If not provided, there will be no `like` button in the product card
  /// and the generation results.
  final AiutaWishlistFeature? wishlist;

  /// Creates an [AiutaFeatures] instance with the given features configurations.
  ///
  /// The [welcomeScreen] is the optional and is shown before the onboarding
  /// unless the onboarding is not completed.
  ///
  /// The [onboarding] is the optional, which is used to show the user how the virtual
  /// try-on works.
  ///
  /// Required [imagePicker] for the currently main screen, which allows users to select images
  /// to be used for virtual try-on.
  ///
  /// Required [tryOn] is the main feature for the virtual try-on functionality.
  ///
  /// The [consent] describes the consent feature, which can be embedded into
  /// the onboarding pages or displayed as a standalone page.
  ///
  /// The [share] is the optional feature that adds the ability to share generated images.
  ///
  /// The [wishlist] is the optional feature to interact with the host application's wishlist.
  AiutaFeatures({
    this.welcomeScreen,
    this.onboarding,
    this.consent,
    required this.imagePicker,
    required this.tryOn,
    this.share,
    this.wishlist,
  });

  factory AiutaFeatures.builtIn({
    required String termsOfServiceUrl,
    required AiutaTryOnCartHandler cartHandler,
  }) {
    return AiutaFeatures(
      onboarding: AiutaOnboardingFeature.builtIn(),
      consent: AiutaConsentFeature.builtIn(
        termsOfServiceUrl: termsOfServiceUrl,
      ),
      imagePicker: AiutaImagePickerFeature.builtIn(),
      tryOn: AiutaTryOnFeature.builtIn(
        cartHandler: cartHandler,
      ),
      share: AiutaShareFeature.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaFeatures.fromJson(Map<String, dynamic> json) =>
      _$AiutaFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaFeaturesToJson(this);
}
