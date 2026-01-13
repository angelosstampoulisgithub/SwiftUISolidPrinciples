//
//  Liskov.swift
//  SwiftUISolidPrinciples
//
//  Created by Angelos Staboulis on 13/1/26.
//

import Foundation
func loadMessage(provider: MessageProvider) -> Message {
    provider.fetchMessage()
}
