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

public class Card: NSManagedObject, Codable {

    @NSManaged public var id: String
    @NSManaged public var name: String
    @NSManaged public var imageUrl: String?
    @NSManaged public var set: String
    @NSManaged public var type: [String]
//    public let image: UIImage?

    enum CodingKeys: String, CodingKey {
        case id, name, imageURL, set, type
    }
//
//    public init( id: String, name: String, imageUrl: String, set: String, type: [String]) {
//        self.id = id
//        self.name = name
//        self.imageUrl = imageUrl
//        self.set = set
//        self.type = type
////        self.image = image
//    }

    // MARK: - Decodable
    override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }
    public required convenience init(from decoder: Decoder) throws {
        guard let codingUserInfoKeyManagedObjectContext = CodingUserInfoKey(rawValue: "context"),
            let managedObjectContext = decoder.userInfo[codingUserInfoKeyManagedObjectContext] as? NSManagedObjectContext,
            let entity = NSEntityDescription.entity(forEntityName: "Card", in: managedObjectContext) else {
                fatalError("Failed to decode User")
        }

        self.init(entity: entity, insertInto: managedObjectContext)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)!
        self.name = try container.decodeIfPresent(String.self, forKey: .name)!
        self.imageUrl = try container.decodeIfPresent(String.self, forKey: .imageURL)
        self.set = try container.decodeIfPresent(String.self, forKey: .set)!
        self.type = try container.decodeIfPresent(Array<String>.self, forKey: .type)!

    }

    // MARK: - Encodable
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.imageUrl, forKey: .imageURL)
        try container.encode(self.set, forKey: .set)
        try container.encode(self.type, forKey: .type)
    }
    
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
}
