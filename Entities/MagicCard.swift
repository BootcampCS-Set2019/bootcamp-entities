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
    public var imageUrl: String?
    public var id: String?

    public init(name: String?, imageUrl: String?, id: String?) {
        self.name = name
        self.imageUrl = imageUrl
        self.id = id
    }
    
    public static func ==(lhs: MagicCard, rhs: MagicCard) -> Bool {
        return lhs.id == rhs.id
    }
}
