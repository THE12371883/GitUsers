//
//  MockGitHubUserListsViewControllerTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsViewControllerTests: GitHubUserListsDisplayLogic {
	
	var showUsersCalled = 0
	func show(users viewModel: GetGitHubUsers.ViewModel) {
		showUsersCalled += 1
	}
	
	var showErrorCalled = 0
	func show(error: ErrorViewModel) {
		showErrorCalled += 1
	}
	
	var showSetFavoriteCalled = 0
	func show(setFavorite viewModel: SetFavoriteUser.ViewModel) {
		showSetFavoriteCalled += 1
	}
	
	var showUserDetailCalled = 0
	func show(userDetail viewModel: SelectedGitHubUser.ViewModel) {
		showUserDetailCalled += 1
	}
	
	var showLoadingViewCalled = 0
	func show(loadingView viewModel: ShowLoading.ViewModel) {
		showLoadingViewCalled += 1
	}
	
	var showFavoriteFilterActiveCalled = 0
	func show(favoriteFilterActive viewModel: SelectedFavoriteFilter.ViewModel) {
		showFavoriteFilterActiveCalled += 1
	}
	
	var showSortDataCalled = 0
	func show(sortData viewModel: SelectedSortData.ViewModel) {
		showSortDataCalled += 1
	}
	
	var showSearchUserCalled = 0
	func show(searchUser viewModel: SearchGithubUser.ViewModel) {
		showSearchUserCalled += 1
	}

}
