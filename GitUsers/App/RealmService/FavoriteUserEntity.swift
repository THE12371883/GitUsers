//
//  GithubUserEntity.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import RealmSwift

class FavoriteUser: Object {
	@objc dynamic var id: Int = 0
	
	func primaryKey() -> Int {
		return id
	}
}
