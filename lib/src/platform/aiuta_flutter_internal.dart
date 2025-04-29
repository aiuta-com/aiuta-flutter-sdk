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

// Update listenable values from data providers

void _listenDataProviderChanges(AiutaConfiguration configuration) {
  // Onboarding
  final onboardingDataProvider =
      configuration.features.onboarding?.dataProvider;
  if (onboardingDataProvider != null) {
    final onboardingListener = () {
      _platform.updateIsOnboardingCompleted(
          isOnboardingCompleted:
              onboardingDataProvider.isOnboardingCompleted.value);
    };
    onboardingListener();
    onboardingDataProvider.isOnboardingCompleted
        .addListener(onboardingListener);
  }

  // Consent
  final consentFeature = configuration.features.consent;
  switch (consentFeature) {
    case AiutaConsentStandaloneOnboardingPageFeature():
      final consentListener = () {
        _platform.updateObtainedConsentsIds(
            obtainedConsentsIds:
                consentFeature.dataProvider.obtainedConsentsIds.value);
      };
      consentListener();
      consentFeature.dataProvider.obtainedConsentsIds
          .addListener(consentListener);
      break;
    case AiutaConsentStandaloneImagePickerPageFeature():
      final consentListener = () {
        _platform.updateObtainedConsentsIds(
            obtainedConsentsIds:
                consentFeature.dataProvider.obtainedConsentsIds.value);
      };
      consentListener();
      consentFeature.dataProvider.obtainedConsentsIds
          .addListener(consentListener);
      break;
    default:
      break;
  }

  // Uploads history
  final uploadsHistoryDataProvider =
      configuration.features.imagePicker.uploadsHistory?.dataProvider;
  if (uploadsHistoryDataProvider != null) {
    final uploadedImagesListener = () {
      _platform.updateUploadedImages(
          uploadedImages: uploadsHistoryDataProvider.uploadedImages.value);
    };
    uploadedImagesListener();
    uploadsHistoryDataProvider.uploadedImages
        .addListener(uploadedImagesListener);
  }

  // Generations history
  final generationsHistoryDataProvider =
      configuration.features.tryOn.generationsHistory?.dataProvider;
  if (generationsHistoryDataProvider != null) {
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
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async => dataProvider.completeOnboarding(),
          );
          break;
        // Consent
        case ObtainUserConsentsIdsAction():
          final consentFeature = configuration.features.consent;
          switch (consentFeature) {
            case AiutaConsentStandaloneOnboardingPageFeature():
              _handleDataActionCompletion(
                action: action,
                impl: () async => consentFeature.dataProvider
                    .obtainConsentsIds(action.consentIds),
              );
              break;
            case AiutaConsentStandaloneImagePickerPageFeature():
              _handleDataActionCompletion(
                action: action,
                impl: () async => consentFeature.dataProvider
                    .obtainConsentsIds(action.consentIds),
              );
              break;
            default:
              break;
          }
          break;
        // Uploads history
        case AddUploadedImagesAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async =>
                dataProvider.addUploadedImages(action.uploadedImages),
          );
          break;
        case SelectUploadedImageAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async =>
                dataProvider.selectUploadedImage(action.uploadedImage),
          );
          break;
        case DeleteUploadedImagesAction():
          final dataProvider =
              configuration.features.imagePicker.uploadsHistory?.dataProvider;
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async =>
                dataProvider.deleteUploadedImages(action.uploadedImages),
          );
          break;
        // Generations history
        case AddGeneratedImagesAction():
          final dataProvider =
              configuration.features.tryOn.generationsHistory?.dataProvider;
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async => dataProvider.addGeneratedImages(
              action.generatedImages,
              action.productsIds,
            ),
          );
          break;
        case DeleteGeneratedImagesAction():
          final dataProvider =
              configuration.features.tryOn.generationsHistory?.dataProvider;
          if (dataProvider == null) {
            return;
          }
          _handleDataActionCompletion(
            action: action,
            impl: () async => dataProvider.deleteGeneratedImages(
              action.generatedImages,
            ),
          );
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
