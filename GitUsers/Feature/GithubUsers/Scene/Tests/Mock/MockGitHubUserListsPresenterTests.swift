//
//  MockGitHubUserListsPresenterTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsPresenterTests: IGitHubUserListsPresenter {
	
	var presentUsersCalled = 0
	func present(users response: GetGitHubUsers.Response) {
		presentUsersCalled += 1
	}
	
	var presentSetFavoriteCalled = 0
	func present(setFavorite response: SetFavoriteUser.Response) {
		presentSetFavoriteCalled += 1
	}
	
	var presentErrorCalled = 0
	func present(error: Error) {
		presentErrorCalled += 1
	}
	
	var presentUserDetailCalled = 0
	func present(userDetail response: SelectedGitHubUser.Response) {
		presentUserDetailCalled += 1
	}
	
	var presentLoadingViewCelled = 0
	func present(loadingView response: ShowLoading.Response) {
		presentLoadingViewCelled += 1
	}
	
	var presentFavoriteFilterCalled = 0
	func present(favoriteFilter response: SelectedFavoriteFilter.Response) {
		presentFavoriteFilterCalled += 1
	}
	
	var presentSortDataCalled = 0
	func present(sortData response: SelectedSortData.Response) {
		presentSortDataCalled += 1
	}
	
	var presentSearchUserCalled = 0
	func present(searchUser response: SearchGithubUser.Response) {
		presentSearchUserCalled += 1
	}
	

}
