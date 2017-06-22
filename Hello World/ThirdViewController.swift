//
//  ThirdViewController.swift
//  Hello World
//
//  Created by pras on 6/20/17.
//  Copyright © 2017 pras. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var tMessage3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoHome(_ sender: Any) {
        performSegue(withIdentifier: "homeSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC1 = segue.destination as! ViewController
        targetVC1.varMessage1 = tMessage3.text
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
