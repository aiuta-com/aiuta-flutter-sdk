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
import UIKit

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration {
    func buildConfiguration(with host: AiutaHost) -> Aiuta.Configuration {
        .custom(
            auth: auth.build(with: host),
            userInterface: userInterface.build(),
            features: features.build(with: host),
            analytics: analytics.build(with: host),
            debugSettings: debugSettings.build()
        )
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.Auth {
    func build(with host: AiutaHost) -> Aiuta.Auth {
        switch self {
            case let .apiKey(auth):
                return .apiKey(auth.apiKey)
            case let .jwt(auth):
                return .jwt(subscriptionId: auth.subscriptionId, jwtProvider: host.jwtProvider)
        }
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.UserInterface {
    func build() -> Aiuta.Configuration.UserInterface {
        .default
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.Features {
    func build(with host: AiutaHost) -> Aiuta.Configuration.Features {
        .default
    }
}

@available(iOS 13.0.0, *)
extension Optional where Wrapped == AiutaPlugin.Configuration.Analytics {
    func build(with host: AiutaHost) -> Aiuta.Analytics {
        switch self {
            case .some: return .handler(host.handlers)
            case .none: return .none
        }
    }
}

@available(iOS 13.0.0, *)
extension AiutaPlugin.Configuration.DebugSettings {
    func build() -> Aiuta.Configuration.DebugSettings {
        .release
    }
}
