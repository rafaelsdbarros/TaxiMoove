//
//  ViewController.swift
//  TaxiMoove
//
//  Created by Rafael on 06/12/24.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var mainView: MainView = {
        return MainView()
    }()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
