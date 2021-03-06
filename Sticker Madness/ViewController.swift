//
//  ViewController.swift
//  Sticker Madness
//
//  Created by Mehul Ajith on 6/28/16.
//  Copyright © 2016 Mehul Ajith. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    //MARK: Vars
    var imagePickerController: UIImagePickerController?
    
    var mustacheImageView: UIImageView?
    var glassesImageView: UIImageView?
    var hatImageView: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getPhoto(sender: UIButton) {
        
        let alertController = UIAlertController(title: nil, message: "Where do you want to get your picture from?", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        let photoLibraryAction = UIAlertAction(title: "Photo from Library", style: .Default) { (action) in
            
            self.showImagePickerController(.PhotoLibrary)
        }
        
        alertController.addAction(photoLibraryAction)
        
        if (UIImagePickerController.isCameraDeviceAvailable(.Front)) {
            let cameraAction = UIAlertAction(title: "Photo from Camera", style: .Default) { (action) in
                
                self.showImagePickerController(.Camera)
                
            }
            
            alertController.addAction(cameraAction)
        }
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    // Show Controller
    func showImagePickerController(sourceType: UIImagePickerControllerSourceType) {
        imagePickerController = UIImagePickerController()
        imagePickerController!.sourceType = sourceType
        imagePickerController?.delegate = self
        self.presentViewController(imagePickerController!, animated: true, completion: nil)
        print("Running")
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        self.dismissViewControllerAnimated(true, completion: nil)
        self.imageView.image = image
        print ("got Image!")
    }
    
    var glassesCode = 1
    
    @IBAction func glasses(sender: UIButton) {
        
        glassesImageView?.image = nil
        
        glassesCode = glassesCode * -1
        
        if glassesCode == -1 {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let screenWidth = screenSize.width / 2
        let screenHeight = screenSize.height / 2
        
        let mustacheImage : UIImage = UIImage(named:"eyeglasses1")!
        glassesImageView = UIImageView(image: mustacheImage)
        glassesImageView!.image = mustacheImage
        glassesImageView!.frame = CGRect(x: screenWidth/2, y: screenHeight/2, width: mustacheImage.size.width/2, height: mustacheImage.size.height/2)
        self.view.addSubview(glassesImageView!)
    }
        
    }
    
    var mustacheCode = 1
    
    @IBAction func mustache(sender: UIButton) {
        
        mustacheImageView?.image = nil
        
        mustacheCode = mustacheCode * -1
        
        if mustacheCode == -1 {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let screenWidth = screenSize.width / 2
        let screenHeight = screenSize.height / 2
        
        let mustacheImage : UIImage = UIImage(named:"Mustache1")!
        mustacheImageView = UIImageView(image: mustacheImage)
        mustacheImageView!.image = mustacheImage
        mustacheImageView!.frame = CGRect(x: screenWidth/2, y: screenHeight/2, width: mustacheImage.size.width/2, height: mustacheImage.size.height/2)
        self.view.addSubview(mustacheImageView!)
     
        }
    }
    
    var hatCode = 1
    
    @IBAction func hat(sender: UIButton) {
        
        hatImageView?.image = nil

        hatCode = hatCode * -1
        
        if hatCode == -1 {
        
            let screenSize: CGRect = UIScreen.mainScreen().bounds
            
            let screenWidth = screenSize.width / 2
            let screenHeight = screenSize.height / 2
            
            let mustacheImage : UIImage = UIImage(named:"hat1")!
            hatImageView = UIImageView(image: mustacheImage)
            hatImageView!.image = mustacheImage
            hatImageView!.frame = CGRect(x: screenWidth/2, y: screenHeight/2, width: mustacheImage.size.width/2, height: mustacheImage.size.height/2)
            self.view.addSubview(hatImageView!)
        
        }
    }
    
    
    
}


