//
//  ContentView.swift
//  SwiftUISolidPrinciples
//
//  Created by Angelos Staboulis on 13/1/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel: MessageViewModel

    init() {
        // Swap implementations freely (SOLID!)
        let provider = LocalMessageProvider()
        _viewModel = StateObject(
            wrappedValue: MessageViewModel(provider: provider)
        )
    }

    var body: some View {
        VStack(spacing: 16) {
            Text(viewModel.messageText)
                .font(.title)

            Button("Load Message") {
                viewModel.load()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
