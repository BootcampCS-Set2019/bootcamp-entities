//
//  File.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
import Foundation

public struct MagicCard {
    
    public var name: String?
    public var names: [String]?
    public var manaCost: String?
    public var cmc: Int?
    public var colors: [String]?
    public var colorIdentity: [String]?
    public var type: String?
    public var supertypes: [String]?
    public var types: [String]?
    public var subtypes: [String]?
    public var rarity: String?
    public var set: String?
    public var setName: String?
    public var text: String?
    public var artist: String?
    public var number: String?
    public var power: String?
    public var toughness: String?
    public var layout: String?
    public var multiverseid: Int?
    public var imageUrl: String?
    public var rulings: [[String:String]]?
    public var foreignNames: [[String:String]]?
    public var printings: [String]?
    public var originalText: String?
    public var originalType: String?
    public var id: String?
    public var flavor: String?
    public var loyalty: Int?
    public var gameFormat: String?
    public var releaseDate: String?
    public var legalities = [String: String]()
    
    public static func ==(lhs: MagicCard, rhs: MagicCard) -> Bool {
        return lhs.id == rhs.id
    }
}
