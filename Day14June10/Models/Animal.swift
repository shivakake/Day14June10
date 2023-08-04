//
//  Animal.swift
//  Day14June10
//
//  Created by SaiKiran Panuganti on 10/07/21.
//

import Foundation

struct Animal: Codable {
    let id, name, headline, animalDescription: String?
    let link: String?
    let image: String?
    let gallery, fact: [String]?

    enum CodingKeys: String, CodingKey {
        case id, name, headline
        case animalDescription = "description"
        case link, image, gallery, fact
    }
}
