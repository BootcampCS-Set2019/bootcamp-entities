//
//  File.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
import Foundation
import UIKit
import CoreData

public struct Cards: Codable {
    public let cards: [Card]

    public init(cards: [Card]) {
        self.cards = cards
    }
}

public class Card: Codable {

    public var id: String
    public var name: String
    public var imageUrl: String?
    public var set: String
    public var types: [String]
//    public let image: UIImage?

    public init( id: String, name: String, imageUrl: String, set: String, types: [String]) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.set = set
        self.types = types
//        self.image = image
    }

    
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
}
