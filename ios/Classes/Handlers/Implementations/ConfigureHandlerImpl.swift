// Copyright 2024 Aiuta USA, Inc
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import AiutaSdk
import Flutter

final class ConfigureHandlerImpl: AiutaViewFinder, AiutaCallHandler {
    let method = "configure"
    let host: AiutaHost

    init(with host: AiutaHost) {
        self.host = host
    }

    func handle(_ call: FlutterMethodCall) throws {
        guard #available(iOS 13.0.0, *) else { throw AiutaPlugin.WrapperError.unsupportedPlatform }
        guard currentViewController != nil else { throw AiutaPlugin.WrapperError.invalidViewState }
        let configuration: AiutaPlugin.Configuration = try call.decodeArgument(AiutaPlugin.Configuration.key)

        Aiuta.setup(
            auth: try configuration.buildAuth(host.jwtProvider),
            configuration: configuration.buildConfiguration(),
            controller: configuration.dataProvider != nil ? host.controller : nil
        )

        if let dataProvider = configuration.dataProvider {
            host.dataProvider.isUserConsentObtained = dataProvider.isUserConsentObtained
            host.dataProvider.uploadedImages = dataProvider.uploadedImages
            host.dataProvider.generatedImages = dataProvider.generatedImages
        }
    }
}
