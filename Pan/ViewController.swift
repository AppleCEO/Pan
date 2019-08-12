//
//  ViewController.swift
//  Pan
//
//  Created by joon-ho kil on 8/12/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(draggingView))

        imageView.addGestureRecognizer(gesture)
    }
    
    @objc func draggingView(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        let draggedView = sender.view!
        draggedView.center = point
        print(point)
    }
}

