//
//  ViewController.swift
//  TaskOneSecondTRy
//
//  Created by Hamda Abdullah  on 09/05/1439 AH.
//  Copyright © 1439 Hamda Abdullah . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var imagePickerController : UIImagePickerController!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onPhotoButton(_ sender: Any) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)}
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    func saveImage (imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) [0] as NSString).appendingPathComponent(imageName)
        let image = imageView.image!
        let data = UIImagePNGRepresentation(image)
        fileManager.createFile(atPath:imagePath as String, contents: data, attributes: nil)
        
    }
    @IBAction func onSaveButton(_ sender: Any) {
    saveImage(imageName: "hopeItWork.png")}
    
    @IBAction func onGallaryButton(_ sender: Any) {
    performSegue(withIdentifier: "gallerySegue", sender: self)}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

