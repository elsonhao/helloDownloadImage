//
//  ViewController.swift
//  helloDownloadImage
//
//  Created by 黃毓皓 on 2017/3/2.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         if let url = URL(string:"https://cdn.codementor.io/assets/topic/category_header/swift-7b180a2fc122c5bd24fcd6520d279452.png"){
            DispatchQueue.global().async {
                do {
                    let myData = try Data(contentsOf: url)
                    let image = UIImage(data: myData)
                    
                    DispatchQueue.main.async {
                        self.myImage.image = image
                    }
               
                } catch  {
                    print(error.localizedDescription)
                }
            }
           
            
        
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

