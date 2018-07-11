//
//  ViewController.swift
//  Pretty-Wallpapers
//
//  Created by Johnny Perdomo on 7/9/18.
//  Copyright © 2018 Johnny Perdomo. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var imageView: SpringImageView!
    @IBOutlet weak var imageText: SpringLabel!
    @IBOutlet weak var exportBtn: SpringButton!
    
    let urlString = "https://source.unsplash.com/collection/1065412"
    

        override func viewDidLoad() {
        super.viewDidLoad()
        addSwipe()
        imageView.autostart = true
    }

    @IBAction func exportBtnPressed(_ sender: Any) {
        
        if imageView.image != nil {
            shareImage()
        }
        
    }
    
    func addSwipe() {
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        swipeleft.direction = UISwipeGestureRecognizerDirection.left
        
        let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        swiperight.direction = UISwipeGestureRecognizerDirection.right
        
        imageView.addGestureRecognizer(swiperight)
        imageView.addGestureRecognizer(swipeleft)
    }
    
    @objc func swipeLeft() {
        
        imageText.animation = "fadeOut"
        imageText.duration = 1.0
        imageText.animate()
        imageText.isHidden = true
        
        imageView.velocity = 10
        imageView.animation = "fadeInLeft"
        imageView.curve = "easeIn"
        imageView.animate()
        getImage()
        
        exportBtn.animation = "fadeIn"
        exportBtn.delay = 0.5
        exportBtn.duration = 1.5
        exportBtn.animate()
    }
    
    @objc func swipeRight() {
        
        imageText.animation = "fadeOut"
        imageText.duration = 1.0
        imageText.animate()
        imageText.isHidden = true
        
        imageView.velocity = 10
        imageView.animation = "fadeInRight"
        imageView.curve = "easeIn"
        imageView.animate()
        getImage()
        
        exportBtn.animation = "fadeIn"
        exportBtn.delay = 0.5
        exportBtn.duration = 1.5
        exportBtn.animate()
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


