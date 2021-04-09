//
//  MockGithubAPIServiceTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubAPIService: IGitHubAPIService {
	
	var getGitHubUsersCalled = 0
	var getGitHubUsersResultStub: Result<[IGitHubUserListsModel], Error> = .success([GitHubUserListsModel(id: 1, loginName: "Teravat", avartarUrlString: "http://google.com", gitHubUrlString: "http://google.com", favoriteStatus: false)])
	func getGitHubUsers(completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		getGitHubUsersCalled += 1
		completion(getGitHubUsersResultStub)
	}
	
	var getGitHubUserRepositoriesCalled = 0
	var getGitHubUserRepositoriesResultStub: Result<[IGithubRepositoriesModel], Error> = .success([GithubRepositoriesModel(reposName: "Github", reposDescription: "Kaidee", reposStarCount: 3, reposForkCount: 3, reposLastUpdated: Date())])
	func getGitHubUserRepositories(with username: String, completion: @escaping (Result<[IGithubRepositoriesModel], Error>) -> Void) {
		getGitHubUserRepositoriesCalled += 1
		completion(getGitHubUserRepositoriesResultStub)
	}
	
	var getGitHubSearchUsersCalled = 0
	var getGitHubSearchUsersResultStub: Result<[IGitHubUserListsModel], Error> = .success([GitHubUserListsModel(id: 1, loginName: "Teravat", avartarUrlString: "http://google.com", gitHubUrlString: "http://google.com", favoriteStatus: false)])
	func getGitHubSearchUsers(with parameter: [String : Any], completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		getGitHubSearchUsersCalled += 1
		completion(getGitHubSearchUsersResultStub)
	}
}
