import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/defaults/debug/aiuta_debug_defults.dart';
import 'package:aiuta_flutter/configuration/defaults/features/aiuta_fatures_defaults.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/aiuta_user_interface_defaults.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';

final class AiutaConfigurationDefaultBuilder {
  AiutaConfiguration build({
    required AiutaAuth auth,
    required String termsOfServiceUrl,
    required AiutaTryOnCartHandler cartHandler,
  }) =>
      AiutaConfiguration(
        auth: auth,
        features: AiutaFeaturesDefaultBuilder().build(
          termsOfServiceUrl: termsOfServiceUrl,
          cartHandler: cartHandler,
        ),
        userInterface: AiutaUserInterfaceConfigurationDefaultBuilder().build(),
        debugSettings: DebugSettingsDefaultBuilder().build(),
      );
}
