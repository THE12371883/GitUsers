//
//  MockGitHubUserListsRouterTests.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockGitHubUserListsRouterTests: IGitHubUserListsRouter {
	
	var goToDetailCalled = 0
	func goToDetail(from viewController: UIViewController, gitUserModel: IGitHubUserListsModel) {
		goToDetailCalled += 1
	}
}
