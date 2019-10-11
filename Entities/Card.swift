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

public class Card: NSObject, Codable {

    public var id: String
    public var name: String
    public var imageUrl: String?
    public var set: String
    public var types: [String]
    public let imageData: Data?

    public init( id: String, name: String, imageUrl: String, set: String, types: [String], image: UIImage) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.set = set
        self.types = types
        self.imageData = image.jpegData(compressionQuality: 1)
    }



    
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
}

