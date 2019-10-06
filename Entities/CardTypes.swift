//
//  Types.swift
//  Entities
//
//  Created by matheus.filipe.bispo on 06/10/19.
//  Copyright © 2019 BootcampCS-Set2019. All rights reserved.
//

import Foundation

public struct CardTypes: Codable {
    var types: [String]

    public init(types: [String]) {
        self.types = types
    }
}
