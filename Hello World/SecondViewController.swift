//
//  SecondViewController.swift
//  Hello World
//
//  Created by pras on 6/20/17.
//  Copyright © 2017 pras. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var tMessage2: UILabel!
    var varMessage : String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tMessage2.text = varMessage
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
