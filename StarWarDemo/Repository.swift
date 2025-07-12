//
//  Repository.swift
//  StarWarDemo
//
//  Created by Diego Guzman on 12/07/25.
//

import Foundation

protocol DataRepository {
    var url: URL { get }
}

struct Repository: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
    
}
struct TestRepository: DataRepository{
    var url: URL {
        Bundle.main.url(forResource: "StarWars Test", withExtension: "json")!
    }
}

extension DataRepository {
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }
}
