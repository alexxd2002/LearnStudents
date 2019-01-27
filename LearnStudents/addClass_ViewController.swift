//
//  addClass_ViewController.swift
//  LearnStudents
//
//  Created by Alexander Meinecke on 03.11.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit
import CoreData

class addClass_ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var classname: UITextField!
    
    //MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadClasses()

    }
    
    //MARK: - Buttonfunctions
    
    //button to save
    @IBAction func saveBttn(_ sender: Any) {
        saveSomething()
        dismiss(animated: true, completion: nil)
    }
    
    //button abort
    @IBAction func abort(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
