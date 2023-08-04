//
//  HomeViewController.swift
//  Day14June10
//
//  Created by SaiKiran Panuganti on 10/07/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeView: HomeView!
    var homeModel: HomeModel = HomeModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.setUpUI()
        homeModel.getData()
        let data = homeModel.animals
        homeView.animals = data
        homeView.updateUI()
    }


}
