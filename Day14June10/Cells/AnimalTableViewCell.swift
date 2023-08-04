//
//  AnimalTableViewCell.swift
//  Day14June10
//
//  Created by SaiKiran Panuganti on 10/07/21.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalTitle: UILabel!
    @IBOutlet weak var animalDescription: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        arrowImage.image = UIImage(systemName: "chevron.right")
        animalImage.layer.cornerRadius = 10.0
    }

    func configureUI(animal: Animal) {
        animalImage.image = UIImage(named: animal.image ?? "")
        animalTitle.text = animal.name ?? ""
        animalDescription.text = animal.animalDescription ?? ""
    }
    
}
