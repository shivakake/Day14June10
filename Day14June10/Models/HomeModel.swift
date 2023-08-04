//
//  HomeModel.swift
//  Day14June10
//
//  Created by SaiKiran Panuganti on 10/07/21.
//

import Foundation

class HomeModel {
    var animals: [Animal] = []
    
    func getData() {
        animals = Bundle.main.decode("animals.json")
    }
}
