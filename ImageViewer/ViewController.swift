//
//  ViewController.swift
//  ImageViewer
//
//  Created by stam on 2020/11/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    var tempImage: UIImage!
    let imageCount = 10
    var imageNumber:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("###viewDidLoad")
        tempImage = UIImage(named: "1.jpg")
        imgView.image = tempImage
    }

    @IBAction func btnBack(_ sender: UIButton) {
        print("btnBack \(self.imageNumber)")
        if self.imageNumber > 1 && self.imageNumber <= 11 {
            self.imageNumber = self.imageNumber-1
            tempImage = UIImage(named: String(self.imageNumber)+".jpg")
            self.imgView.image = tempImage
        } else {
            print("첫번째 이미지")
        }
    }
    
    @IBAction func btnForward(_ sender: UIButton) {
        print("btnForward \(self.imageNumber)")
        if self.imageNumber >= 1 && self.imageNumber < 11 {
            self.imageNumber = self.imageNumber+1
            tempImage = UIImage(named: String(self.imageNumber)+".jpg")
            self.imgView.image = tempImage
        } else {
            print("마지막 이미지")
        }
    }
}

