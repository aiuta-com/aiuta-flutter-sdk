part of '../../aiuta_flutter.dart';

AiutaPlatform get _platform => AiutaPlatform.instance;

void _configure(AiutaConfiguration configuration) {
  _observeAiutaAuthActions(configuration);
  _observeAiutaActions(configuration);
  _observeAiutaDataActions(configuration);
  _observeAiutaAnalytics(configuration);
  _platform.configure(configuration: configuration);
  _listenDataProviderChanges(configuration);
}

// Listeners

void _listenDataProviderChanges(AiutaConfiguration configuration) {
  _listenOnboardingChanges(configuration);
  _listenConsentChanges(configuration);
  _listenUploadsHistoryChanges(configuration);
  _listenGenerationsHistoryChanges(configuration);
}

void _listenOnboardingChanges(AiutaConfiguration configuration) {
  final onboardingDataProvider =
      configuration.features.onboarding?.dataProvider;
  if (onboardingDataProvider is AiutaOnboardingDataProviderCustom) {
    final onboardingListener = () {
      _platform.updateIsOnboardingCompleted(
          isOnboardingCompleted:
              onboardingDataProvider.isOnboardingCompleted.value);
    };
    onboardingListener();
    onboardingDataProvider.isOnboardingCompleted
        .addListener(onboardingListener);
  }
}

void _listenConsentChanges(AiutaConfiguration configuration) {
  final consentFeature = configuration.features.consent;
  switch (consentFeature) {
    case AiutaConsentStandaloneOnboardingPageFeature():
      final consentDataProvider = consentFeature.dataProvider;
      if (consentDataProvider is AiutaConsentStandaloneDataProviderCustom) {
        final consentListener = () {
          _platform.updateObtainedConsentsIds(
            obtainedConsentsIds: consentDataProvider.obtainedConsentsIds.value,
          );
        };
        consentListener();
        consentDataProvider.obtainedConsentsIds.addListener(consentListener);
      }
      break;
    case AiutaConsentStandaloneImagePickerPageFeature():
      final consentDataProvider = consentFeature.dataProvider;
      if (consentDataProvider is AiutaConsentStandaloneDataProviderCustom) {
        final consentListener = () {
          _platform.updateObtainedConsentsIds(
            obtainedConsentsIds: consentDataProvider.obtainedConsentsIds.value,
          );
        };
        consentListener();
        consentDataProvider.obtainedConsentsIds.addListener(consentListener);
      }
      break;
    default:
      break;
  }
}

void _listenUploadsHistoryChanges(AiutaConfiguration configuration) {
  final uploadsHistoryDataProvider =
      configuration.features.imagePicker.uploadsHistory?.dataProvider;
  if (uploadsHistoryDataProvider
      is AiutaImagePickerUploadsHistoryDataProviderCustom) {
    final uploadedImagesListener = () {
      _platform.updateUploadedImages(
          uploadedImages: uploadsHistoryDataProvider.uploadedImages.value);
    };
    uploadedImagesListener();
    uploadsHistoryDataProvider.uploadedImages
        .addListener(uploadedImagesListener);
  }
}

void _listenGenerationsHistoryChanges(AiutaConfiguration configuration) {
  final generationsHistoryDataProvider =
      configuration.features.tryOn.generationsHistory?.dataProvider;
  if (generationsHistoryDataProvider
      is AiutaTryOnGenerationsHistoryDataProviderCustom) {
    final generatedImagesListener = () {
      _platform.updateGeneratedImages(
          generatedImages:
              generationsHistoryDataProvider.generatedImages.value);
    };
    generatedImagesListener();
    generationsHistoryDataProvider.generatedImages
        .addListener(generatedImagesListener);
  }
}

// Observe data providers callbacks

void _observeAiutaAuthActions(AiutaConfiguration configuration) {
  _platform.observeAiutaAuthActions().listen(
    (authAction) async {
      switch (authAction) {
        case RequestJwtAction():
          var auth = configuration.auth;
          switch (auth) {
            case AiutaJwtAuth():
              try {
                var jwt = await auth.getJwt(
                  jsonDecode(authAction.params),
                );
                _platform.resolveJwt(
                  token: jwt,
                );
              } catch (e) {
                _platform.resolveJwt(
                  token: "",
                );
              }
              break;
            case AiutaApiKeyAuth():
              throw Exception(
                "Native tried to get JWT, while flutter get different type of auth",
              );
          }
          break;
      }
    },
  );
}

void _observeAiutaActions(AiutaConfiguration configuration) {
  _platform.observeAiutaActions().listen(
    (action) async {
      switch (action) {
        case AddToWishlistAction():
          configuration.features.wishlist?.dataProvider
              .setProductInWishlist(action.productId, action.isInWishlist);
          break;
        case AddToCartAction():
          configuration.features.tryOn.cart.handler.addToCart(action.productId);
          break;
      }
    },
  );
}

void _observeAiutaDataActions(AiutaConfiguration configuration) {
  _platform.observeAiutaDataActions().listen(
    (action) async {
      switch (action) {
        // Onboarding
        case CompleteOnboardingAction():
          final dataProvider = configuration.features.onboarding?.dataProvider;

          if (dataProvider is AiutaOnboardingDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async => dataProvider.completeOnboarding(),
            );
          }
          break;
        // Consent
        case ObtainUserConsentsIdsAction():
          final consentFeature = configuration.features.consent;
          switch (consentFeature) {
            case AiutaConsentStandaloneOnboardingPageFeature():
              final dataProvider = consentFeature.dataProvider;

              if (dataProvider is AiutaConsentStandaloneDataProviderCustom) {
                _handleDataActionCompletion(
                  action: action,
                  impl: () async =>
                      dataProvider.obtainConsentsIds(action.consentIds),
                );
              }
              break;
            case AiutaConsentStandaloneImagePickerPageFeature():
              final dataProvider = consentFeature.dataProvider;

              if (dataProvider is AiutaConsentStandaloneDataProviderCustom) {
                _handleDataActionCompletion(
                  action: action,
                  impl: () async =>
                      dataProvider.obtainConsentsIds(action.consentIds),
                );
              }
              break;
            default:
              break;
          }
          break;
        // Uploads history
        case AddUploadedImagesAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;

          if (dataProvider
              is AiutaImagePickerUploadsHistoryDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async =>
                  dataProvider.addUploadedImages(action.uploadedImages),
            );
          }
          break;
        case SelectUploadedImageAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;

          if (dataProvider
              is AiutaImagePickerUploadsHistoryDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async =>
                  dataProvider.selectUploadedImage(action.uploadedImage),
            );
          }
          break;
        case DeleteUploadedImagesAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;

          if (dataProvider
              is AiutaImagePickerUploadsHistoryDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async =>
                  dataProvider.deleteUploadedImages(action.uploadedImages),
            );
          }
          break;
        // Generations history
        case AddGeneratedImagesAction():
          final dataProvider =
              configuration.features.tryOn.generationsHistory?.dataProvider;

          if (dataProvider is AiutaTryOnGenerationsHistoryDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async => dataProvider.addGeneratedImages(
                action.generatedImages,
                action.productsIds,
              ),
            );
          }
          break;
        case DeleteGeneratedImagesAction():
          final dataProvider =
              configuration.features.tryOn.generationsHistory?.dataProvider;

          if (dataProvider is AiutaTryOnGenerationsHistoryDataProviderCustom) {
            _handleDataActionCompletion(
              action: action,
              impl: () async => dataProvider.deleteGeneratedImages(
                action.generatedImages,
              ),
            );
          }
          break;
        case GetShareTextAction():
          final dataProvider = configuration.features.share?.dataProvider;
          if (dataProvider is AiutaShareDataProviderCustom) {
            _handleDataActionCompletion(
                action: action,
                impl: () async {
                  final text =
                      await dataProvider.getShareText(action.productIds);
                  _platform.resolveShareText(
                    productIds: action.productIds,
                    text: text,
                  );
                });
          }
          break;
      }
    },
  );
}

void _observeAiutaAnalytics(AiutaConfiguration configuration) {
  _platform.observeAiutaAnalytics().listen((event) async {
    configuration.analytics?.handler.onAnalyticsEvent(event);
  });
}

// Handle data action completion

Future<void> _handleDataActionCompletion({
  required AiutaDataAction action,
  required Future<void> Function() impl,
}) async {
  try {
    await impl();
    _platform.notifyDataActionSucceeded(
      success: AiutaDataActionSuccess(
        actionId: action.id,
        actionType: action.type,
      ),
    );
  } catch (e) {
    _platform.notifyDataActionErrorThrown(
      error: AiutaDataActionError(
        actionId: action.id,
        actionType: action.type,
      ),
    );
  }
}
