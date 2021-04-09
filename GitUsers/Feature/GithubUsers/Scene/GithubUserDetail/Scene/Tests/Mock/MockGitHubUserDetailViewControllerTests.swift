//
//  MockGitHubUserDetailViewControllerTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

class MockGitHubUserDetailViewControllerTests: GitHubUserDetailDisplayLogic {
	
	var showProfileCalled = 0
	func show(profile viewModel: GetUserProfile.ViewModel) {
		showProfileCalled += 1
	}
	
	var showRepositoriesCalled = 0
	func show(repositories viewModel: GetGitHubUserRepos.ViewModel) {
		showRepositoriesCalled += 1
	}
	
	var showErrorCalled = 0
	func show(error: ErrorViewModel) {
		showErrorCalled += 1
	}
	
	var showLoadingViewCalled = 0
	func show(loadingView viewModel: ShowLoadingView.ViewModel) {
		showLoadingViewCalled += 1
	}
}
