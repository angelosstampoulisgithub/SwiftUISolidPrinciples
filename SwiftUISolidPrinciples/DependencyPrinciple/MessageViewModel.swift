//
//  MessageViewModel.swift
//  SwiftUISolidPrinciples
//
//  Created by Angelos Staboulis on 13/1/26.
//

import Foundation
final class MessageViewModel: ObservableObject {

    @Published var messageText: String = ""

    private let provider: MessageProvider

    init(provider: MessageProvider) {
        self.provider = provider
    }

    func load() {
        let message = provider.fetchMessage()
        messageText = message.text
    }
}

