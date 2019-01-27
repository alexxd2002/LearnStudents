//
//  addClassVC_CoreData.swift
//  LearnStudents
//
//  Created by Alexander Meinecke on 03.11.18.
//  Copyright © 2018 Alexander Meinecke. All rights reserved.
//

import UIKit
import CoreData

extension addClass_ViewController {
    
    //MARK: - Save
    
    /**
     This function saves the new class in Core Data
     
     * identify context
     * checks entity "Class"
     * checks attribute "name"
     * creats value
     * saves value or shows error
     
    */
    func saveSomething() {
        //identify Context
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        let entityName = "Class" //Name of Table in CD

        //checks if Entity exsists
        guard let newEntity = NSEntityDescription.entity(forEntityName: entityName, in: context) else {
            return
        }
        //Checks if Attribute "name" exists
        let newClass = NSManagedObject(entity: newEntity, insertInto: context)
        //Create new Classvalue
        newClass.setValue(classname.text, forKey: "name")
        //Save new Value with CD
        do {
            print(6)
            try context.save()
            print("Class saved with value: \t\(classname.text!)")
        } catch {
            print("Error: \t\(error.localizedDescription)")
        }
    }
    
    //MARK: - Load
    
    /**
     This function loads all Class-Objects
     
     * identifys context
     * makes a request
     * print results or error
    */
    func loadClasses() {
        
        //identify context
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let entityName = "Class"
        
        //make a request
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        
        do {
            let results = try context.fetch(request)
            
            for r in results {
                if let result = r as? NSManagedObject {
                    
                    guard let name = result.value(forKey: "name") as? String else {
                        return
                    }
                    
                    print("Class with name: \t\(name)")
                }
                
            }
            print("About \(results.count) objects were loaded")
            } catch {
            print(error.localizedDescription)
        }
        
        
    }
    
}
