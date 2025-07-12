//
//  ContentView.swift
//  StarWarDemo
//
//  Created by Diego Guzman on 12/07/25.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = StarCardVM()
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(viewModel.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
        
    }
}

#Preview {
    ContentView(viewModel: StarCardVM(repository: TestRepository()))
}
