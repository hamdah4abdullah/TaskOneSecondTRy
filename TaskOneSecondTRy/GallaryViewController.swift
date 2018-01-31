//
//  GallaryViewController.swift
//  TaskOneSecondTRy
//
//  Created by Hamda Abdullah  on 09/05/1439 AH.
//  Copyright © 1439 Hamda Abdullah . All rights reserved.
//

import UIKit

class GallaryViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    func getImage(imageName : String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) [0] as? NSString)?.appendingPathComponent(imageName)
        if fileManager.fileExists(atPath: imagePath!){
            imageView.image = UIImage(contentsOfFile: imagePath!)}
        else{
            print("No Image")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getImage(imageName: "hopeItWork.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
