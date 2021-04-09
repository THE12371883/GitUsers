//
//  MockGitHubUserDetailWorkerTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

class MockGitHubUserDetailWorkerTests: IGitHubUserDetailWorker {
	
	var getUserProfileCalled = 0
	var getUserProfileResultStub = GitHubUserListsModel(id: 11, loginName: "Kaidee", avartarUrlString: "", gitHubUrlString: "", favoriteStatus: false)
	func getUserProfile(completion: @escaping (IGitHubUserListsModel) -> Void) {
		getUserProfileCalled += 1
		completion(getUserProfileResultStub)
	}
	
	var getUserRepositoriesCalled = 0
	var getUserRepositoriesResultStub: Result<[IGithubRepositoriesModel], Error> = .success([GithubRepositoriesModel(reposName: "Kaidee", reposDescription: "Kaidee Career", reposStarCount: 3, reposForkCount: 3, reposLastUpdated: Date())])
	func getUserRepositories(completion: @escaping (Result<[IGithubRepositoriesModel], Error>) -> Void) {
		getUserRepositoriesCalled += 1
		completion(getUserRepositoriesResultStub)
	}
	
}
