//
//  GithubUserProfileViewModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

protocol IGithubUserProfileViewModel {
	var id: Int? { get }
	var loginName: String? { get }
	var avartarUrl: URL? { get }
	var gitHubUrlString: String? { get }
}

struct GithubUserProfileViewModel: IGithubUserProfileViewModel {
	var id: Int?
	var loginName: String?
	var avartarUrl: URL?
	var gitHubUrlString: String?
	
	init(item: IGitHubUserListsModel) {
		self.id = item.id
		self.loginName = item.loginName
		self.avartarUrl = URL(string: item.avartarUrlString ?? "")
		self.gitHubUrlString = item.gitHubUrlString
	}
}
