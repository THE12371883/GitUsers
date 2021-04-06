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
	var name: String? { get }
	var avartarUrlString: String? { get }
	var gitHubUrlString: String? { get }
}

struct GitHubUserListsModel: IGitHubUserListsModel {
	var id: Int?
	var loginName: String?
	var name: String?
	var avartarUrlString: String?
	var gitHubUrlString: String?
}
