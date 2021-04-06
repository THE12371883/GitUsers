//
//  GitHubUserListsCellModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

struct GitHubUserListsCellModel {
	var gitHubUserName: String?
	var gitHubURLString: String?
	var gitHubImageUrl: URL?
	
	init(item: IGitHubUserListsViewModel) {
		self.gitHubUserName = item.loginName
		self.gitHubURLString = item.gitHubUrlString
		self.gitHubImageUrl = item.avartarUrl
	}
}
