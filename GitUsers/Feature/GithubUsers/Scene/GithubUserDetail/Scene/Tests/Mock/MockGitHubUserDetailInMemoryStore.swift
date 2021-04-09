//
//  MockGitHubUserDetailInMemoryStore.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

class MockGitHubUserDetailInMemoryStore: IGitHubUserDetailInMemoryStore {
	var gitHubUserModel: IGitHubUserListsModel?
	
}
