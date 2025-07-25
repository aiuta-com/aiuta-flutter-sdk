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

final class ConfigureHandlerImpl: AiutaCallHandler {
    let method = "configure"
    let key = "configuration"
    let host: AiutaHost

    init(with host: AiutaHost) {
        self.host = host
    }

    func handle(_ call: FlutterMethodCall) throws {
        guard #available(iOS 13.0.0, *) else {
            throw AiutaPlugin.WrapperError.unsupportedPlatform
        }
        let dto: AiutaPlugin.Configuration = try call.decodeArgument(key)
        let configuration = dto.buildConfiguration(with: host)
        Task { @MainActor in Aiuta.setup(configuration: configuration) }
    }
}
