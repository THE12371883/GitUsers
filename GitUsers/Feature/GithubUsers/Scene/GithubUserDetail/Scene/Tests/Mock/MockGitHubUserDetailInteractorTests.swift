//
//  MockGitHubUserDetailInteractorTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

class MockGitHubUserDetailInteractorTests: IGitHubUserDetailInteractor {
	
	var getUserProfileCalled = 0
	func getUserProfile(request: GetUserProfile.Request) {
		getUserProfileCalled += 1
	}
	
	var getUserRepositoriesCalled = 0
	func getUserRepositories(request: GetGitHubUserRepos.Request) {
		getUserRepositoriesCalled += 1
	}

}
