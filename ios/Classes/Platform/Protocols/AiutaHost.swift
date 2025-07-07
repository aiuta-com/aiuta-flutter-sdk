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

protocol AiutaHost {
    @available(iOS 13.0.0, *)
    var jwtProvider: Aiuta.Auth.JwtProvider { get }

    @available(iOS 13.0.0, *)
    var handlers: Aiuta.Configuration.Handlers { get }

    @available(iOS 13.0.0, *)
    var dataProviders: Aiuta.Configuration.DataProviders { get }

    var jwtResult: AiutaCompleter<String>? { get }
    var shareTextResult: AiutaCompleter<String>? { get }
    
    var isOnboardingCompleted: Bool { get set }
    var obtainedConsentsIds: Aiuta.Observable<[String]> { get set }
    var uploaded: Aiuta.Observable<[Aiuta.Image.Input]> { get set }
    var generated: Aiuta.Observable<[Aiuta.Image.Generated]> { get set }
    var wishlistProductIds: Aiuta.Observable<[String]> { get set }

    func handle(success: AiutaPlugin.Actions.Notification)
    func handle(error: AiutaPlugin.Actions.Notification)
}
