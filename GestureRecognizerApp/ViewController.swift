//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Beyza Aslan on 22.02.2025.
//

import UIKit

class ViewController: UIViewController {
    var isfirstImage = true
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    // bir tane jest algılayıcım olsun imageView tıklanınca  değiştireyim görseli tıklanabilir veya tıklanamaz yapabiliriz
    @objc func changePic() {
        // print("tapped");
      
        if isfirstImage == true {
            imageView.image = UIImage(named: "2")
            myLabel.text = "oyy yerimm yerimm"
            isfirstImage = false
        }else{
            imageView.image = UIImage(named: "1")
            myLabel.text = "Aşklarımm"
            isfirstImage = true
        }
    }
}

