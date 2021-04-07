//
//  SelectedFavoriteFilter.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

enum SelectedFavoriteFilter {
	struct Request {
		var isActive: Bool
	}
	
	struct Response {
		var githubUsersModel: [IGitHubUserListsModel]
	}
	
	struct ViewModel {
		var githubUsersViewModel: [IGitHubUserListsViewModel]
	}
}
