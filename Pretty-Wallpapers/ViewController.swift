//
//  ViewController.swift
//  Pretty-Wallpapers
//
//  Created by Johnny Perdomo on 7/9/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let urlString = "https://source.unsplash.com/collection/1065412"
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func exportBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func randomBtnPressed(_ sender: Any) {
        getImage()
    }
    

    func getImage() {
        
        if let url = URL(string: urlString) {
            
            do {
                let data = try Data(contentsOf: url)
                self.imageView.image = UIImage(data: data)
            } catch {
                print(error.localizedDescription)
            }
            
        }
    }
    
}


