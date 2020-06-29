//
//  ViewController.swift
//  Testowanie
//
//  Created by Paweł Gramcow on 29/06/2020.
//  Copyright © 2020 Paweł Gramcow. All rights reserved.

//


import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }
    

}

