//
//  FirstPageViewController.swift
//  MapForFlashpoint
//
//  Created by Salvador Garcia on 7/25/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     var category: String = ""
    
    @IBOutlet var buttonNames: [UILabel]!
    
    
    @IBAction func buttonPressed(_ sender: UIButton!) {
        
        let tagNumber = sender.tag
        
        switch tagNumber {
        case 1:
            category = buttonNames[sender.tag - 1].text ?? ""
            print(category)
        case 2:
            category = buttonNames[sender.tag - 1].text ?? ""
            print(category)
        case 3:
            category = buttonNames[sender.tag - 1].text ?? ""
            print(category)
        case 4:
            category = buttonNames[sender.tag - 1].text ?? ""
            print(category)
        default:
            return
        }
        
        performSegue(withIdentifier: "mapSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ViewController
        vc.passedCategory = self.category
    }

}
