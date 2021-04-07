//
//  GitHubUserDetailWorker.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//  Copyright (c) 2564 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IGitHubUserDetailWorker {
	func getUserProfile(completion: @escaping (IGitHubUserListsModel) -> Void)
}

class GitHubUserDetailWorker {
	let gitHubAPIService: IGitHubAPIService
	var inMemoryStore: IGitHubUserDetailInMemoryStore
	
	init(inMemoryStore: IGitHubUserDetailInMemoryStore,
		 gitHubAPIService: IGitHubAPIService) {
		self.inMemoryStore = inMemoryStore
		self.gitHubAPIService = gitHubAPIService
	}
}

// MARK: - IGitHubUserDetailWorker

extension GitHubUserDetailWorker: IGitHubUserDetailWorker {
	func getUserProfile(completion: @escaping (IGitHubUserListsModel) -> Void) {
		guard let gitHubUserModel = inMemoryStore.gitHubUserModel else {
			return
		}
		completion(gitHubUserModel)
	}
}
