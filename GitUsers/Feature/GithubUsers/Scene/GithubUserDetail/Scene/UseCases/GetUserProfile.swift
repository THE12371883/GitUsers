//
//  GetUserProfile.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

enum GetUserProfile {
	struct Request {
		
	}
	
	struct Response {
		var gitHubUserModel: IGitHubUserListsModel
	}
	
	struct ViewModel {
		var gitHubUserProfileViewModel: IGithubUserProfileViewModel
	}
}
