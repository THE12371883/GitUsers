//
//  SearchGithubUser.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

import UIKit

enum SearchGithubUser {
	struct Request {
		var searchText: String
	}
	
	struct Response {
		var githubUsersModel: [IGitHubUserListsModel]
	}
	
	struct ViewModel {
		var githubUsersViewModel: [IGitHubUserListsViewModel]
	}
}
