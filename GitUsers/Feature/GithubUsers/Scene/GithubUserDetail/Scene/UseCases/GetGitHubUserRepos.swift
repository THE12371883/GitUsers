//
//  GetGitHubUserDetail.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

enum GetGitHubUserRepos {
	struct Request {
		
	}
	
	struct Response {
		var gitHubUserReposModel: [IGithubRepositoriesModel]
	}
	
	struct ViewModel {
		var gitHubUserReposViewModel: [IGithubUserRepositoriesViewModel]
	}
}
