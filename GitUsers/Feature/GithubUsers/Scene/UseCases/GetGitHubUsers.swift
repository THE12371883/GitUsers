//
//  GetGitHubUsers.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

enum GetGitHubUsers {
	struct Request {
		
	}
	
	struct Response {
		var githubUsersModel: [IGitHubUserListsModel]
	}
	
	struct ViewModel {
		var githubUsersViewModel: [IGitHubUserListsViewModel]
	}
}
