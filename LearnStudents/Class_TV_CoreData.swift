//
//  Class_TV_CoreData.swift
//  LearnStudents
//
//  Created by Alexander Meinecke on 22.02.19.
//  Copyright © 2019 Alexander Meinecke. All rights reserved.
//

import UIKit
import CoreData

extension Class_TableViewController {
    
    //MARK: - Load
    
    /**
     This function loads all Class-Objects
     
     * identifys context
     * makes a request
     * print results or error
     */
    func loadClasses() -> Array<Any> {
        var classes: Array<Any> = []
        
        //identify context
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return classes
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
                        return classes
                    }
                    
                    classes.append(name)
                    print("Class with name: \t\(name)")
                }
                
            }
            print("About \(results.count) objects were loaded")
           print("Array in func: \(classes[1])")
        } catch {
            print(error.localizedDescription)
        }
        
        return classes
    }
    
}
