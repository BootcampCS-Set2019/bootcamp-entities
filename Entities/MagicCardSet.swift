//
//  MagicCardSet.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 03/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//
public struct MagicCardSet: Codable, Equatable {
    
    public let code: String
    public let name: String
    public let releaseDate: String

    public static func ==(lhs: MagicCardSet, rhs: MagicCardSet) -> Bool {
        return lhs.code == rhs.code
    }
}


