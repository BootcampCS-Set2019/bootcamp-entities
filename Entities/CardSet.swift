//
//  MagicCardSet.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
public struct CardSets: Codable {
    var sets: [CardSet]

    public init(sets: [CardSet]) {
        self.sets = sets
    }
}

public struct CardSet: Codable, Equatable {
    
    public let code: String
    public let name: String
    public let releaseDate: String

    public init(code: String, name: String, releaseDate: String) {
        self.code = code
        self.name = name
        self.releaseDate = releaseDate
    }

    public static func ==(lhs: CardSet, rhs: CardSet) -> Bool {
        return lhs.code == rhs.code
    }
}


