//
//  GitHubUserListsViewModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

protocol IGitHubUserListsViewModel {
	var id: Int? { get }
	var loginName: String? { get }
	var avartarUrl: URL? { get }
	var gitHubUrlString: String? { get }
	var isFavoriteUser: Bool { get set }
}

struct GitHubUserListsViewModel: IGitHubUserListsViewModel {
	var id: Int?
	var loginName: String?
	var avartarUrl: URL?
	var gitHubUrlString: String?
	var isFavoriteUser: Bool
	
	init(item: IGitHubUserListsModel) {
		self.id = item.id
		self.loginName = item.loginName
		self.avartarUrl = URL(string: item.avartarUrlString ?? "")
		self.gitHubUrlString = item.gitHubUrlString
		self.isFavoriteUser = item.favoriteStatus ?? false
	}
}
