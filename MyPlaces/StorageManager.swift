//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Alina Kostanovkaya on 03.12.2021.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write() {
            realm.add(place)
        }
    }
}
