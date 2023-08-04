//
//  HomeView.swift
//  Day14June10
//
//  Created by SaiKiran Panuganti on 10/07/21.
//

import UIKit

class HomeView: UIView {
    @IBOutlet weak var tableView: UITableView!
    
    var animals: [Animal] = []
    
    func setUpUI() {
        tableView.register(UINib(nibName: "AnimalTableViewCell", bundle: nil), forCellReuseIdentifier: "AnimalTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func updateUI() {
        tableView.reloadData()
    }
}

extension HomeView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell", for: indexPath) as? AnimalTableViewCell {
            cell.configureUI(animal: animals[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension HomeView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


