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
    @IBOutlet weak var imageText: UILabel!
    
    let urlString = "https://source.unsplash.com/collection/1065412"
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func exportBtnPressed(_ sender: Any) {
        
        if imageView.image != nil {
            shareImage()
        }
        
    }
    
    @IBAction func randomBtnPressed(_ sender: Any) {
        
        getImage()
        imageText.isHidden = true
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
    
    func shareImage() {
        let image = imageView.image
        let imageShare = [image!]
        let activityViewController = UIActivityViewController(activityItems: imageShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    
}


