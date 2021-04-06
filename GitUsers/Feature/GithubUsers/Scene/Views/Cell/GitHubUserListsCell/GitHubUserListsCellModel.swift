//
//  GitHubUserListsCellModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

struct GitHubUserListsCellModel {
	var userId: Int
	var gitHubUserName: String?
	var gitHubURLString: String?
	var gitHubImageUrl: URL?
	var isFavoriteUser: Bool
	var rowIndex: Int
	
	init(item: IGitHubUserListsViewModel, rowIndex: Int) {
		self.userId = item.id ?? 0
		self.gitHubUserName = item.loginName
		self.gitHubURLString = item.gitHubUrlString
		self.gitHubImageUrl = item.avartarUrl
		self.isFavoriteUser = item.isFavoriteUser
		self.rowIndex = rowIndex
	}
}
