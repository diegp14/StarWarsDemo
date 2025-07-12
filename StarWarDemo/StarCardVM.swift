//
//  StarWarsVM.swift
//  StarWarDemo
//
//  Created by Diego Guzman on 12/07/25.
//


import SwiftUI

@Observable
final class StarCardVM {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
            
        }
    }
    
    
    
}
