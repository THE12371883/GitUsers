//
//  MockGitHubUserListsInMemoryStore.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsInMemoryStore: IGitHubUserListsInMemoryStore {
	var gitHubUserListsModel: [IGitHubUserListsModel] = []
	
	var sortType: SortType = .default
	
	var isFavoriteFilterActive: Bool = false
}
