//
//  MockGitHubUserListsInteractorTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsInteractorTests: IGitHubUserListsInteractor {
	
	var getUsersCalled = 0
	func getUsers(request: GetGitHubUsers.Request) {
		getUsersCalled += 1
	}
	
	var setFavoriteUserCalled = 0
	func setFavoriteUser(request: SetFavoriteUser.Request) {
		setFavoriteUserCalled += 1
	}
	
	var selectedGithubUserCalled = 0
	func selectedGithubUser(request: SelectedGitHubUser.Request) {
		selectedGithubUserCalled += 1
	}
	
	var selectedFavoriteFilterCalled = 0
	func selectedFavoriteFilter(request: SelectedFavoriteFilter.Request) {
		selectedFavoriteFilterCalled += 1
	}
	
	var selectedSortCalled = 0
	func selectedSort(request: SelectedSortData.Request) {
		selectedSortCalled += 1
	}
	
	var searchUserCalled = 0
	func searchUser(request: SearchGithubUser.Request) {
		searchUserCalled += 1
	}

}
