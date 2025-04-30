import 'package:aiuta_flutter/configuration/debug/aiuta_debug_settings.dart';
import 'package:aiuta_flutter/configuration/debug/aiuta_validation_policy.dart';

final class DebugSettingsBuilder {
  AiutaDebugSettings build() => AiutaDebugSettings(
        isLoggingEnabled: false,
        emptyStringsPolicy: AiutaValidationPolicy.warning,
        unavailableResourcesPolicy: AiutaValidationPolicy.warning,
        infoPlistDescriptionsPolicy: AiutaValidationPolicy.warning,
        listSizePolicy: AiutaValidationPolicy.warning,
      );
}
