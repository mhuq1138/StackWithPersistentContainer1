//
//  CoreDataStack.swift
//  StackWithPersistentContainer1
//
//  Created by Mazharul Huq on 2/19/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import CoreData

class CoreDataStack{
    let modelName:String
    
    init(modelName:String){
        self.modelName = modelName
    }
    
    lazy var storeContainer:NSPersistentContainer = {
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores{ (storeDescription, error)
            in
            if let error = error as NSError?{
                print("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
    }()
    
    func saveContext ()->Bool {
        guard managedObjectContext.hasChanges else { return false }
        do {
            try managedObjectContext.save()
            return true
        } catch let error as NSError {
            print("Unresolved error \(error), \(error.userInfo)")
            return false
        }
    }
}
