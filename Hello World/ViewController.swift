//
//  ViewController.swift
//  Hello World
//
//  Created by pras on 6/19/17.
//  Copyright © 2017 pras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tMessage: UITextField!
    
    var toSecond = true
    
    var varMessage1 : String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tMessage.text = varMessage1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getMessage(_ sender: Any) {
        print("message : \(tMessage.text!)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (toSecond) {
            let targetVC = segue.destination as! SecondViewController
            targetVC.varMessage = tMessage.text
        }
    }
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
    }
    
    @IBAction func goto2() {
        toSecond = true
        performSegue(withIdentifier: "secondSegue", sender: self)
    }
    
    @IBAction func goto3() {
        toSecond = false
        performSegue(withIdentifier: "thirdSegue", sender: self)
    }
}

