//
//  RealmService.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import RealmSwift
import SwiftyJSON

protocol IRealmService {
	func initailizeRealm()
	func insertFavoriteUserToRealm(withId id: Int, completion: @escaping (Bool) -> Void)
	func queryFavoriteUserWithIdFromRealm(withId id: Int, completion: @escaping (Bool) -> Void)
}

struct RealmService { }

extension RealmService: IRealmService {
	func initailizeRealm() {
		
		var config = Realm.Configuration()
		
		guard let fileURL = config.fileURL else {
			return
		}

		config.fileURL = fileURL.deletingLastPathComponent().appendingPathComponent("favorite.realm")

		Realm.Configuration.defaultConfiguration = config
	}
	
	func insertFavoriteUserToRealm(withId id: Int, completion: @escaping (Bool) -> Void) {
		let realm = try? Realm()
		
		let predicate = NSPredicate(format: "id = %d", id)
		
		if let result = realm?.objects(FavoriteUser.self).filter(predicate).first {
			realm?.beginWrite()
			
			realm?.delete(result)
			
			try? realm?.commitWrite()
			completion(true)
		} else {
			realm?.beginWrite()
			
			let favoriteIdInsert = FavoriteUser()
			favoriteIdInsert.id = id
				
			realm?.add(favoriteIdInsert)
			try? realm?.commitWrite()
			completion(true)
		}
	}
	
	func queryFavoriteUserWithIdFromRealm(withId id: Int, completion: @escaping (Bool) -> Void) {
		let realm = try? Realm()
		let predicate = NSPredicate(format: "id = %d", id)
		let result = realm?.objects(FavoriteUser.self).filter(predicate)
		let favoriteId = result?.first
		completion(favoriteId?.id == id)
	}
}
