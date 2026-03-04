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

final class AiutaAnalyticsStreamerImpl: AiutaStreamHandlerImpl, AiutaAnalyticsStreamer {
    init(with messenger: FlutterBinaryMessenger) {
        super.init(with: messenger, name: "aiutaAnalyticsHandler")
    }

    private static let eventRemapping: [String: String] = [
        "\"consentsGiven\"": "\"consentGiven\"",
    ]

    private static let unsupportedValues: [String] = [
        "\"sizeFit\"", "\"sizeFitSurvey\"", "\"sizeFitResults\"",
    ]

    func eventOccurred(_ event: Aiuta.Event) {
        guard let data = try? JSONEncoder().encode(event),
              var jsonString = String(data: data, encoding: .utf8) else { return }
        for unsupported in Self.unsupportedValues {
            if jsonString.contains(unsupported) { return }
        }
        for (nativeValue, flutterValue) in Self.eventRemapping {
            jsonString = jsonString.replacingOccurrences(of: nativeValue, with: flutterValue)
        }
        sendRaw(jsonString)
    }
}
