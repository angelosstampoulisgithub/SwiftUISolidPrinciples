//
//  LocalMessageProvider.swift
//  SwiftUISolidPrinciples
//
//  Created by Angelos Staboulis on 13/1/26.
//

import Foundation
struct LocalMessageProvider: MessageProvider {
    func fetchMessage() -> Message {
        Message(text: "Hello from local storage")
    }
}
