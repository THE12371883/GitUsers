//
//  SelectedGitHubUser.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

enum SelectedGitHubUser {
	struct Request {
		var index: Int
	}
	
	struct Response {
		var githubUserModel: IGitHubUserListsModel
	}
	
	struct ViewModel {
		var githubUserModel: IGitHubUserListsModel
	}
}
