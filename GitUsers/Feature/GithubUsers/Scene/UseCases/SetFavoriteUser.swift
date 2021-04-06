//
//  SetFavoriteUser.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

enum SetFavoriteUser {
	struct Request {
		var id: Int
		var index: Int
		var isFavorite: Bool
	}
	
	struct Response {
		var index: Int
		var isFavorite: Bool
	}
	
	struct ViewModel {
		var index: Int
		var isFavorite: Bool
	}
}
