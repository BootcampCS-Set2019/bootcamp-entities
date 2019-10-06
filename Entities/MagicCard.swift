//
//  File.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
import Foundation

public struct MagicCard: Codable, Equatable {

    public let id: String
    public let name: String
    public let imageUrl: String?

    public init( id: String, name: String, imageUrl: String) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
    }
    
    public static func ==(lhs: MagicCard, rhs: MagicCard) -> Bool {
        return lhs.id == rhs.id
    }
}
