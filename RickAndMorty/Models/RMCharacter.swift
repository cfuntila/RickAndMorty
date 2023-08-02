//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Charity Funtila on 7/18/23.
//

import Foundation

struct Character: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}



