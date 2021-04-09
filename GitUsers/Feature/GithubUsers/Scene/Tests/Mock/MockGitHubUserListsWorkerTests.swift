//
//  MockGitGubUserListsWorkerTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsWorkerTests: IGitHubUserListsWorker {
	 
	var getGitHubUsersCalled = 0
	var getGitHubUsersResultStub: Result<[IGitHubUserListsModel], Error> = .success([GitHubUserListsModel()])
	func getGitHubUsers(completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		getGitHubUsersCalled += 1
		completion(getGitHubUsersResultStub)
	}
	
	var setFavoriteUserCalled = 0
	var setFavoriteUserResultStub: Bool = true
	func setFavoriteUser(with id: Int, completion: @escaping (Bool) -> Void) {
		setFavoriteUserCalled += 1
		completion(setFavoriteUserResultStub)
	}
	
	var getGithubUserDetailCalled = 0
	var getGithubUserDetailResultStub: IGitHubUserListsModel = GitHubUserListsModel()
	func getGithubUserDetail(at index: Int, completion: @escaping (IGitHubUserListsModel) -> Void) {
		getGithubUserDetailCalled += 1
		completion(getGithubUserDetailResultStub)
	}
	
	var fetchGithubUsersDataCalled = 0
	var fetchGithubUsersDataResultStub: [IGitHubUserListsModel] = [GitHubUserListsModel()]
	func fetchGithubUsersData() -> [IGitHubUserListsModel] {
		fetchGithubUsersDataCalled += 1
		return fetchGithubUsersDataResultStub
	}
	
	var setFavoriteFilterCalled = 0
	var setFavoriteFilterResultStub: [IGitHubUserListsModel] = [GitHubUserListsModel()]
	func setFavoriteFilter(isActive: Bool, completion: @escaping ([IGitHubUserListsModel]) -> Void) {
		setFavoriteFilterCalled += 1
		completion(setFavoriteFilterResultStub)
	}
	
	var setSortCalled = 0
	var setSortResultStub: [IGitHubUserListsModel] = [GitHubUserListsModel()]
	func setSort(sortType: SortType, completion: @escaping ([IGitHubUserListsModel]) -> Void) {
		setSortCalled += 1
		completion(setSortResultStub)
	}
	
	var sortGitHubUsersCalled = 0
	var sortGitHubUsersResultStub: [IGitHubUserListsModel] = [GitHubUserListsModel()]
	func sortGitHubUsers(datas: [IGitHubUserListsModel]) -> [IGitHubUserListsModel] {
		sortGitHubUsersCalled += 1
		return sortGitHubUsersResultStub
	}
	
	var getGitHubSearchUsersCalled = 0
	var getGitHubSearchUsersResultStub: Result<[IGitHubUserListsModel], Error> = .success([GitHubUserListsModel()])
	func getGitHubSearchUsers(with searchText: String, completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		getGitHubSearchUsersCalled += 1
		completion(getGitHubSearchUsersResultStub)
	}
	
	
}
