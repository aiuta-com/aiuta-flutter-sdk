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

// Observe

void _observeAiutaAuthActions(AiutaConfiguration configuration) {
  _platform.observeAiutaAuthActions().listen(
    (authAction) async {
      switch (authAction) {
        case RequestJWTAction():
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
              throw InvalidAuthException(
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
          // var updatedProduct =
          //     await configuration.listeners.addToWishlistClick(action.product);
          // AiutaPlatform.instance.updateActiveAiutaProduct(
          //   updatedAiutaProduct: updatedProduct,
          // );
          break;
        case AddToCartAction():
          // configuration.listeners.addToCartClick(action.product);
          break;
      }
    },
  );
}

void _observeAiutaDataActions(AiutaConfiguration configuration) {
  _platform.observeAiutaDataActions().listen(
    (action) async {
      switch (action) {
        case ObtainUserConsentsIdsAction():
          var consentFeature = configuration.features.consent;
          switch (consentFeature) {
            case AiutaConsentStandaloneOnboardingPageFeature():
              consentFeature.dataProvider.obtainConsentsIds(action.consentIds);
              break;
            case AiutaConsentStandaloneImagePickerPageFeature():
              consentFeature.dataProvider.obtainConsentsIds(action.consentIds);
              break;
            default:
              break;
          }
        default:
          break;
        // case AddUploadedImagesAction():
        //   listeners.addUploadedImages(action.uploadedImages);
        //   break;
        // case SelectUploadedImageAction():
        //   listeners.selectUploadedImage(action.uploadedImage);
        //   break;
        // case DeleteUploadedImagesAction():
        //   _errorHandler(
        //     errorType: AiutaErrorType.failedDeleteUploadedImages,
        //     action: () =>
        //         listeners.deleteUploadedImages(action.uploadedImages),
        //   );
        //   break;
        // case AddGeneratedImagesAction():
        //   listeners.addGeneratedImages(
        //       action.productId, action.generatedImages);
        //   break;
        // case DeleteGeneratedImagesAction():
        //   _errorHandler(
        //     errorType: AiutaErrorType.failedDeleteGeneratedImages,
        //     action: () =>
        //         listeners.deleteGeneratedImages(action.generatedImages),
        //   );
        //   break;
      }
    },
  );
}

void _observeAiutaAnalytics(AiutaConfiguration configuration) {
// if (configuration.onAnalyticsEvent == null) {
//   return;
// }
//
// AiutaPlatform.instance.observeAiutaAnalytic().map((event) {
//   var rawEvent = jsonDecode(event) as Map<String, dynamic>;
//   return AiutaAnalyticEvent.fromJson(rawEvent);
// }).listen((event) async {
//   configuration.onAnalyticsEvent!(event);
// });
}

// OLD

void _listenDataProviderChanges(AiutaConfiguration configuration) {
// var dataProvider = configuration.dataProvider;
// if (dataProvider == null) {
//   return;
// }
//
// dataProvider.isUserConsentObtained.addListener(() {
//   AiutaPlatform.instance.updateUserConsent(
//       isUserConsentObtained: dataProvider.isUserConsentObtained.value);
// });
//
// dataProvider.uploadedImages.addListener(() {
//   AiutaPlatform.instance.updateUploadedImages(
//       uploadedImages: dataProvider.uploadedImages.value);
// });
//
// dataProvider.generatedImages.addListener(() {
//   AiutaPlatform.instance.updateGeneratedImages(
//       generatedImages: dataProvider.generatedImages.value);
// });
}

// Utils
// Future<void> _errorHandler<T>({
//   required AiutaHostErrorType errorType,
//   required Future<T> Function() action,
// }) async {
//   try {
//     await action();
//   } catch (e) {
// // Notify native
//     AiutaPlatform.instance.notifyAboutError(
//       error: AiutaHostError(errorType: errorType),
//     );
//   }
// }
