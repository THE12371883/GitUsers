//
//  MockGitHubUserDetailPresenterTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

class MockGitHubUserDetailPresenterTests: IGitHubUserDetailPresenter {
	
	var presentUserProfileCalled = 0
	func present(userProfile response: GetUserProfile.Response) {
		presentUserProfileCalled += 1
	}
	
	var presentRepositoriesCalled = 0
	func present(repositories response: GetGitHubUserRepos.Response) {
		presentRepositoriesCalled += 1
	}
	
	var presentErrorCalled = 0
	func present(error: Error) {
		presentErrorCalled += 1
	}
	
	var presentLoadingViewCalled = 0
	func present(loadingView response: ShowLoadingView.Response) {
		presentLoadingViewCalled += 1
	}
	
}
