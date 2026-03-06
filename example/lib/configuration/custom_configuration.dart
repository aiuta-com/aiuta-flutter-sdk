import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics_handler.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/debug/aiuta_debug_settings.dart';
import 'package:aiuta_flutter/configuration/debug/aiuta_validation_policy.dart';
import 'package:aiuta_flutter/configuration/features/aiuta_features.dart';
import 'package:aiuta_flutter/configuration/features/base/aiuta_component_style.dart';
import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_data.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_strings.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_styles.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_images.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_data.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/protection_disclaimer/aiuta_image_picker_protection_disclaimer_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/protection_disclaimer/aiuta_image_picker_protection_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/protection_disclaimer/aiuta_image_picker_protection_disclaimer_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_styles.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_shapes.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_strings.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_images.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/how_it_works/aiuta_onboarding_how_it_works_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_icons.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_toggles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_typography.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_icons.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_feature.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_icons.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_strings.dart';
import 'package:aiuta_flutter/configuration/ui/aiuta_user_interface.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_presentation_style.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_swipe_to_dismiss_policy.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_settings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/aiuta_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_grabber.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_scheme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_prices_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_theme.dart';
import 'package:aiuta_flutter/models/consent/aiuta_consent.dart';
import 'package:aiuta_flutter/models/consent/aiuta_consent_type.dart';
import 'package:aiuta_flutter/models/images/aiuta_generated_image.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:flutter/foundation.dart';

// ---------------------------------------------------------------------------
// In-memory data providers
// ---------------------------------------------------------------------------

class InMemoryOnboardingDataProvider {
  final ValueNotifier<bool> _isCompleted = ValueNotifier(false);

  ValueListenable<bool> get isOnboardingCompleted => _isCompleted;
  void completeOnboarding() => _isCompleted.value = true;
}

class InMemoryConsentDataProvider {
  final ValueNotifier<List<String>> _obtainedIds = ValueNotifier([]);

  ValueListenable<List<String>> get obtainedConsentsIds => _obtainedIds;
  void obtainConsentsIds(List<String> ids) =>
      _obtainedIds.value = [..._obtainedIds.value, ...ids];
}

class InMemoryUploadsHistoryDataProvider {
  final ValueNotifier<List<AiutaInputImage>> _images = ValueNotifier([]);

  ValueListenable<List<AiutaInputImage>> get uploadedImages => _images;

  Future<void> addUploadedImages(List<AiutaInputImage> images) async {
    _images.value = [..._images.value, ...images];
  }

  Future<void> deleteUploadedImages(List<AiutaInputImage> images) async {
    final idsToRemove = images.map((e) => e.id).toSet();
    _images.value =
        _images.value.where((img) => !idsToRemove.contains(img.id)).toList();
  }

  Future<void> selectUploadedImage(AiutaInputImage image) async {
    // Move selected image to the front
    final updated = _images.value.where((img) => img.id != image.id).toList();
    _images.value = [image, ...updated];
  }
}

class InMemoryGenerationsHistoryDataProvider {
  final ValueNotifier<List<AiutaGeneratedImage>> _images = ValueNotifier([]);

  ValueListenable<List<AiutaGeneratedImage>> get generatedImages => _images;

  Future<void> addGeneratedImages(
    List<AiutaGeneratedImage> images,
    List<String> productIds,
  ) async {
    _images.value = [...images, ..._images.value];
  }

  Future<void> deleteGeneratedImages(List<AiutaGeneratedImage> images) async {
    final idsToRemove = images.map((e) => e.id).toSet();
    _images.value =
        _images.value.where((img) => !idsToRemove.contains(img.id)).toList();
  }
}

class InMemoryWishlistDataProvider {
  final ValueNotifier<List<String>> _productIds = ValueNotifier([]);

  ValueListenable<List<String>> get wishlistProductIds => _productIds;

  void setProductInWishlist(List<String> productIds, bool inWishlist) {
    if (inWishlist) {
      final current = Set<String>.from(_productIds.value);
      current.addAll(productIds);
      _productIds.value = current.toList();
    } else {
      final toRemove = productIds.toSet();
      _productIds.value =
          _productIds.value.where((id) => !toRemove.contains(id)).toList();
    }
  }
}

// ---------------------------------------------------------------------------
// Custom AiutaTextStyle helper (Roboto-based, no custom font files needed)
// ---------------------------------------------------------------------------

const _fontFamily = 'Roboto';

AiutaTextStyle _textStyle({
  required double fontSize,
  required AiutaFontWeight fontWeight,
  double letterSpacing = 0,
  double? lineHeight,
}) {
  return AiutaTextStyle(
    fontFamily: _fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    letterSpacing: letterSpacing,
    lineHeight: lineHeight ?? fontSize * 1.3,
  );
}

// ---------------------------------------------------------------------------
// Build a fully custom AiutaConfiguration
// ---------------------------------------------------------------------------

AiutaConfiguration buildCustomConfiguration({
  required String apiKey,
}) {
  // Instantiate all in-memory data providers
  final onboardingData = InMemoryOnboardingDataProvider();
  final consentData = InMemoryConsentDataProvider();
  final uploadsHistoryData = InMemoryUploadsHistoryDataProvider();
  final generationsHistoryData = InMemoryGenerationsHistoryDataProvider();
  final wishlistData = InMemoryWishlistDataProvider();

  return AiutaConfiguration(
    // -----------------------------------------------------------------------
    // Auth
    // -----------------------------------------------------------------------
    auth: AiutaApiKeyAuth(apiKey: apiKey),

    // -----------------------------------------------------------------------
    // Debug settings
    // -----------------------------------------------------------------------
    debugSettings: AiutaDebugSettings(
      isLoggingEnabled: true,
      emptyStringsPolicy: AiutaValidationPolicy.warning,
      unavailableResourcesPolicy: AiutaValidationPolicy.warning,
      infoPlistDescriptionsPolicy: AiutaValidationPolicy.warning,
      listSizePolicy: AiutaValidationPolicy.warning,
    ),

    // -----------------------------------------------------------------------
    // Analytics
    // -----------------------------------------------------------------------
    analytics: AiutaAnalytics(
      handler: AiutaAnalyticsHandler(
        onAnalyticsEvent: (event) {
          debugPrint('[Aiuta Analytics] ${event.type}: ${event.toJson()}');
        },
      ),
    ),

    // -----------------------------------------------------------------------
    // User Interface — full custom theme
    // -----------------------------------------------------------------------
    userInterface: AiutaUserInterfaceConfiguration(
      presentationStyle: AiutaPresentationStyle.bottomSheet,
      swipeToDismiss: AiutaSwipeToDismissPolicy.allowHeaderSwipeOnly,
      theme: _buildCustomTheme(),
    ),

    // -----------------------------------------------------------------------
    // Features — all enabled, all custom strings & data providers
    // -----------------------------------------------------------------------
    features: AiutaFeatures(
      // --- Onboarding ---
      onboarding: AiutaOnboardingFeature(
        howItWorksPage: AiutaOnboardingHowItWorksPageFeature(
          images: AiutaOnboardingHowItWorksPageImagesBuiltIn(),
          strings: AiutaOnboardingHowItWorksPageStringsCustom(
            onboardingHowItWorksPageTitle: 'Virtual Try-On',
            onboardingHowItWorksTitle: 'Try before you buy',
            onboardingHowItWorksDescription:
                'Upload your photo and see how clothes look on you instantly',
          ),
        ),
        strings: AiutaOnboardingStringsCustom(
          onboardingButtonNext: 'Continue',
          onboardingButtonStart: 'Get Started',
        ),
        shapes: AiutaOnboardingShapes(
          onboardingImageL: 4,
          onboardingImageS: 4,
        ),
        dataProvider: AiutaOnboardingDataProviderCustom(
          isOnboardingCompleted: onboardingData.isOnboardingCompleted,
          completeOnboarding: onboardingData.completeOnboarding,
        ),
      ),

      // --- Consent (standalone on onboarding page) ---
      consent: AiutaConsentStandaloneOnboardingPageFeature(
        strings: AiutaConsentStandaloneStringsCustom(
          consentPageTitle: 'Terms & Privacy',
          consentTitle: 'Your data is safe',
          consentDescriptionHtml:
              'To use virtual try-on you agree to let us process your photo. '
              'Your data is handled per our '
              '<a href="https://aiuta.com/legal/terms-of-service.html">Terms of Service</a>.',
          consentButtonAccept: 'I Agree',
          consentButtonReject: 'Decline',
        ),
        styles: AiutaConsentStandaloneStyles(
          drawBordersAroundConsents: true,
        ),
        data: AiutaConsentStandaloneData(
          consents: [
            AiutaConsent(
              id: 'photo_processing',
              type: AiutaConsentType.explicitRequired,
              html: 'I allow processing of my photo for virtual try-on',
            ),
            AiutaConsent(
              id: 'age_confirmation',
              type: AiutaConsentType.explicitRequired,
              html: 'I confirm that I am 16 years or older',
            ),
            AiutaConsent(
              id: 'marketing',
              type: AiutaConsentType.explicitOptional,
              html: 'I would like to receive marketing communications',
            ),
          ],
        ),
        dataProvider: AiutaConsentStandaloneDataProviderCustom(
          obtainedConsentsIds: consentData.obtainedConsentsIds,
          obtainConsentsIds: consentData.obtainConsentsIds,
        ),
      ),

      // --- Image Picker ---
      imagePicker: AiutaImagePickerFeature(
        camera: AiutaImagePickerCameraFeature(
          icons: AiutaImagePickerCameraIconsBuiltIn(),
          strings: AiutaImagePickerCameraStringsCustom(
            cameraButtonTakePhoto: 'Take a Photo',
            cameraPermissionTitle: 'Camera Access',
            cameraPermissionDescription:
                'Please allow camera access to take a photo for virtual try-on',
            cameraPermissionButtonOpenSettings: 'Open Settings',
          ),
        ),
        photoGallery: AiutaImagePickerPhotoGalleryFeature(
          icons: AiutaImagePickerPhotoGalleryIconsBuiltIn(),
          strings: AiutaImagePickerPhotoGalleryStringsCustom(
            galleryButtonSelectPhoto: 'Choose from Gallery',
          ),
        ),
        predefinedModels: AiutaImagePickerPredefinedModelFeature(
          data: AiutaImagePickerPredefinedModelData(
            preferredCategoryId: 'women',
          ),
          icons: AiutaImagePickerPredefinedModelIconsBuiltIn(),
          strings: AiutaImagePickerPredefinedModelStringsCustom(
            predefinedModelPageTitle: 'Select a Model',
            predefinedModelOr: 'or',
            predefinedModelErrorEmptyModelsList: 'No models available',
            predefinedModelCategories: {
              'woman': 'Women',
              'man': 'Men',
            },
          ),
        ),
        protectionDisclaimer: AiutaImagePickerProtectionDisclaimerFeature(
          icons: AiutaImagePickerProtectionDisclaimerIconsCustom(
            protection16: AiutaIcon(path: 'lock'),
          ),
          strings: AiutaImagePickerProtectionDisclaimerStringsCustom(
            protectionDisclaimer:
                'Your photos are private and will not be shared with anyone',
          ),
        ),
        uploadsHistory: AiutaImagePickerUploadsHistoryFeature(
          strings: AiutaImagePickerUploadsHistoryStringsCustom(
            uploadsHistoryButtonNewPhoto: '+ New Photo',
            uploadsHistoryTitle: 'Previously Used',
            uploadsHistoryButtonChangePhoto: 'Change Photo',
          ),
          styles: AiutaImagePickerUploadsHistoryStyles(
            changePhotoButtonStyle: AiutaComponentStyle.brand,
          ),
          dataProvider: AiutaImagePickerUploadsHistoryDataProviderCustom(
            uploadedImages: uploadsHistoryData.uploadedImages,
            addUploadedImages: uploadsHistoryData.addUploadedImages,
            deleteUploadedImages: uploadsHistoryData.deleteUploadedImages,
            selectUploadedImage: uploadsHistoryData.selectUploadedImage,
          ),
        ),
        images: AiutaImagePickerImagesBuiltIn(),
        strings: AiutaImagePickerStringsCustom(
          imagePickerTitleEmpty: 'Upload Your Photo',
          imagePickerDescriptionEmpty:
              'Take or choose a full-body photo to see how clothes look on you',
          imagePickerButtonUploadImage: 'Upload Photo',
        ),
      ),

      // --- Try-On ---
      tryOn: AiutaTryOnFeature(
        loadingPage: AiutaTryOnLoadingPageFeature(
          strings: AiutaTryOnLoadingPageStringsCustom(
            tryOnLoadingStatusUploadingImage: 'Uploading your photo...',
            tryOnLoadingStatusScanningBody: 'Analyzing body shape...',
            tryOnLoadingStatusGeneratingOutfit: 'Creating your look...',
          ),
          styles: AiutaTryOnLoadingPageStyles(
            loadingStatusBackgroundGradient: [
              '#FF1A1A2E',
              '#8816213E',
              '#0016213E',
            ],
            loadingStatusStyle: AiutaComponentStyle.brand,
          ),
        ),
        inputImageValidation: AiutaTryOnInputImageValidationFeature(
          strings: AiutaTryOnInputImageValidationStringsCustom(
            invalidInputImageDescription:
                'We could not detect a person in this photo. '
                'Please use a clear, full-body photo.',
            invalidInputImageChangePhotoButton: 'Choose Another Photo',
          ),
        ),
        cart: AiutaTryOnCartFeature(
          strings: AiutaTryOnCartStringsCustom(addToCart: 'Add to Bag'),
          handler: AiutaTryOnCartHandler(
            addToCart: (productId) {
              debugPrint('[Custom Cart] Added product: $productId');
            },
          ),
        ),
        fitDisclaimer: AiutaTryOnFitDisclaimerFeature(
          icons: AiutaTryOnFitDisclaimerIconsCustom(
            info20: AiutaIcon(path: 'info'),
          ),
          strings: AiutaTryOnFitDisclaimerStringsCustom(
            fitDisclaimerTitle: 'Fit may vary',
            fitDisclaimerDescription:
                'Virtual try-on is for visualization purposes. '
                'Actual fit may differ from the preview.',
            fitDisclaimerButtonClose: 'Got it',
          ),
          typography: AiutaTryOnFitDisclaimerTypographyBuiltIn(),
        ),
        feedback: AiutaTryOnFeedbackFeature(
          icons: AiutaTryOnFeedbackIconsBuiltIn(),
          strings: AiutaTryOnFeedbackStringsCustom(
            feedbackOptions: [
              'Looks great!',
              'Fit seems off',
              'Wrong body shape',
              'Color looks different',
            ],
            feedbackTitle: 'How does it look?',
            feedbackButtonSkip: 'Skip',
            feedbackButtonSend: 'Submit',
            feedbackGratitudeText: 'Thanks for your feedback!',
          ),
        ),
        generationsHistory: AiutaTryOnGenerationsHistoryFeature(
          icons: AiutaTryOnGenerationsHistoryIconsBuiltIn(),
          strings: AiutaTryOnGenerationsHistoryStringsCustom(
            generationsHistoryPageTitle: 'My Try-Ons',
          ),
          dataProvider: AiutaTryOnGenerationsHistoryDataProviderCustom(
            generatedImages: generationsHistoryData.generatedImages,
            addGeneratedImages: generationsHistoryData.addGeneratedImages,
            deleteGeneratedImages: generationsHistoryData.deleteGeneratedImages,
          ),
        ),
        otherPhoto: AiutaTryOnWithOtherPhotoFeature(
          icons: AiutaTryOnWithOtherPhotoIconsBuiltIn(),
        ),
        toggles: AiutaTryOnToggles(isBackgroundExecutionAllowed: true),
        icons: AiutaTryOnIconsBuiltIn(),
        strings: AiutaTryOnStringsCustom(
          tryOnPageTitle: 'Virtual Try-On',
          tryOn: 'Try It On',
          outfitTitle: 'Complete Outfit',
        ),
        styles: AiutaTryOnStyles(
          tryOnButtonGradient: ['#FF6C63FF', '#FF3B82F6'],
        ),
      ),

      // --- Share ---
      share: AiutaShareFeature(
        icons: AiutaShareIconsBuiltIn(),
        strings: AiutaShareStringsCustom(shareButton: 'Share Look'),
        dataProvider: AiutaShareDataProviderCustom(
          getShareText: (productIds) async =>
              'Check out my virtual try-on! Products: ${productIds.join(", ")}',
        ),
      ),

      // --- Wishlist ---
      wishlist: AiutaWishlistFeature(
        icons: AiutaWishlistIconsBuiltIn(),
        strings: AiutaWishlistStringsCustom(
          wishlistButtonAdd: 'Save to Wishlist',
        ),
        dataProvider: AiutaWishlistDataProviderCustom(
          wishlistProductIds: wishlistData.wishlistProductIds,
          setProductInWishlist: wishlistData.setProductInWishlist,
        ),
      ),
    ),
  );
}

// ---------------------------------------------------------------------------
// Custom theme: deep teal palette, squared shapes, custom typography
// ---------------------------------------------------------------------------

AiutaTheme _buildCustomTheme() {
  return AiutaTheme(
    // --- Colors: deep teal / indigo palette ---
    color: AiutaColorTheme(
      scheme: AiutaColorScheme.light,
      brand: '#FF6C63FF', // Indigo accent
      primary: '#FF1B1B2F', // Dark navy text
      secondary: '#FF6B7280', // Muted gray
      onDark: '#FFFFFFFF', // White on dark
      onLight: '#FF1B1B2F', // Navy on light
      background: '#FFFFFFFF', // White cards
      screen: '#FFF3F4F6', // Light gray screen
      neutral: '#FFE5E7EB', // Neutral gray
      border: '#FFD1D5DB', // Soft border
    ),

    // --- Fonts (system Roboto — no custom font files) ---
    fonts: [],

    // --- Label typography ---
    label: AiutaLabelTheme(
      typography: AiutaLabelTypographyCustom(
        titleL: _textStyle(
          fontSize: 26,
          fontWeight: AiutaFontWeight.bold,
          letterSpacing: -0.5,
        ),
        titleM: _textStyle(
          fontSize: 20,
          fontWeight: AiutaFontWeight.semibold,
          letterSpacing: -0.3,
        ),
        regular: _textStyle(
          fontSize: 15,
          fontWeight: AiutaFontWeight.normal,
        ),
        subtle: _textStyle(
          fontSize: 13,
          fontWeight: AiutaFontWeight.normal,
          letterSpacing: 0.1,
        ),
        footnote: _textStyle(
          fontSize: 11,
          fontWeight: AiutaFontWeight.medium,
          letterSpacing: 0.2,
        ),
      ),
    ),

    // --- Image theme: squared corners ---
    image: AiutaImageTheme(
      shapes: AiutaImageShapes(
        imageL: 4,
        imageM: 4,
        imageS: 2,
      ),
      icons: AiutaImageIconsBuiltIn(),
    ),

    // --- Button theme: squared corners ---
    button: AiutaButtonTheme(
      typography: AiutaButtonTypographyCustom(
        buttonM: _textStyle(
          fontSize: 16,
          fontWeight: AiutaFontWeight.semibold,
          letterSpacing: 0.3,
        ),
        buttonS: _textStyle(
          fontSize: 13,
          fontWeight: AiutaFontWeight.medium,
          letterSpacing: 0.2,
        ),
      ),
      shapes: AiutaButtonShapes(
        buttonM: 6,
        buttonS: 4,
      ),
    ),

    // --- Page bar ---
    pageBar: AiutaPageBarTheme(
      typography: AiutaPageBarTypographyCustom(
        pageTitle: _textStyle(
          fontSize: 18,
          fontWeight: AiutaFontWeight.semibold,
        ),
      ),
      icons: AiutaPageBarIconsBuiltIn(),
      toggles: AiutaPageBarToggles(
        preferCloseButtonOnTheRight: true,
      ),
    ),

    // --- Bottom sheet: squared corners ---
    bottomSheet: AiutaBottomSheetTheme(
      shapes: AiutaBottomSheetShapes(
        bottomSheet: 8,
        chipsButton: 4,
      ),
      grabber: AiutaBottomSheetGrabber(
        width: 36,
        height: 4,
        topPadding: 8,
      ),
      toggles: AiutaBottomSheetToggles(
        extendDelimitersToTheRight: false,
        extendDelimitersToTheLeft: false,
      ),
    ),

    // --- Activity indicator ---
    activityIndicator: AiutaActivityIndicatorTheme(
      icons: AiutaActivityIndicatorIconsBuiltIn(),
      colors: AiutaActivityIndicatorColors(overlay: '#99000000'),
      settings: AiutaActivityIndicatorSettings(
        indicationDelay: 300,
        spinDuration: 1000,
      ),
    ),

    // --- Selection snackbar ---
    selectionSnackbar: AiutaSelectionSnackbarTheme(
      strings: AiutaSelectionSnackbarStringsCustom(
        select: 'Select',
        cancel: 'Cancel',
        selectAll: 'Select All',
        unselectAll: 'Deselect All',
      ),
      icons: AiutaSelectionSnackbarIconsBuiltIn(),
      colors: AiutaSelectionSnackbarColors(
        selectionBackground: '#FF1B1B2F',
      ),
    ),

    // --- Error snackbar ---
    errorSnackbar: AiutaErrorSnackbarTheme(
      strings: AiutaErrorSnackbarStringsCustom(
        defaultErrorMessage: 'Something went wrong.\nPlease try again later.',
        tryAgainButton: 'Retry',
      ),
      icons: AiutaErrorSnackbarIconsBuiltIn(),
      colors: AiutaErrorSnackbarColors(
        errorBackground: '#FFEF4444',
        errorPrimary: '#FFFFFFFF',
      ),
    ),

    // --- Product bar ---
    productBar: AiutaProductBarTheme(
      prices: AiutaProductBarPrices(
        typography: AiutaProductBarPricesTypographyCustom(
          price: _textStyle(
            fontSize: 15,
            fontWeight: AiutaFontWeight.bold,
          ),
        ),
        colors: AiutaProductBarPricesColors(
          discountedPrice: '#FFEF4444',
        ),
      ),
      typography: AiutaProductBarTypographyCustom(
        product: _textStyle(
          fontSize: 15,
          fontWeight: AiutaFontWeight.semibold,
        ),
        brand: _textStyle(
          fontSize: 13,
          fontWeight: AiutaFontWeight.normal,
        ),
      ),
      icons: AiutaProductBarIconsBuiltIn(),
      toggles: AiutaProductBarToggles(
        applyProductFirstImageExtraPadding: false,
      ),
    ),

    // --- Power bar ---
    powerBar: AiutaPowerBarTheme(
      strings: AiutaPowerBarStringsCustom(
        poweredByAiuta: 'Powered by Aiuta',
      ),
    ),
  );
}
