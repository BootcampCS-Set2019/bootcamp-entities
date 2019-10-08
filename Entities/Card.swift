//
//  File.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
import Foundation

public struct Cards: Codable {
    public let cards: [Card]

    public init(cards: [Card]) {
        self.cards = cards
    }
}

public struct Card: Codable, Equatable {

    public let id: String
    public let name: String
    public let imageUrl: String?

    public init( id: String, name: String, imageUrl: String) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
    }
    
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
}
