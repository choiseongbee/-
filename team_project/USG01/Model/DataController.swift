//
//  DataController.swift
//  USG01
//
//  Created by 최성빈 on 2023/03/02.
//

import Foundation
import CoreData

class DataController : ObservableObject {
    let container = NSPersistentContainer(name: "DataController")
    
    init(){
        container.loadPersistentStores{ descriptoin, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
