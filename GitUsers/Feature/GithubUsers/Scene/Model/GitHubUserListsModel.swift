//
//  GitHubUsersModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import Foundation

protocol IGitHubUserListsModel {
	var id: Int? { get }
	var loginName: String? { get }
	var avartarUrlString: String? { get }
	var gitHubUrlString: String? { get }
}

struct GitHubUserListsModel: IGitHubUserListsModel {
	var id: Int?
	var loginName: String?
	var avartarUrlString: String?
	var gitHubUrlString: String?
	
	init(item: IGithubUserDatas) {
		self.id = item.id
		self.loginName = item.loginName
		self.avartarUrlString = item.avartarUrlString
		self.gitHubUrlString = item.gitHubUrlString
	}
}
