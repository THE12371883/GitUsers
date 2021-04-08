//
//  SelectedSortData.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

import UIKit

enum SelectedSortData {
	struct Request {
		var sortType: SortType
	}
	
	struct Response {
		var githubUsersModel: [IGitHubUserListsModel]
	}
	
	struct ViewModel {
		var githubUsersViewModel: [IGitHubUserListsViewModel]
	}
}
