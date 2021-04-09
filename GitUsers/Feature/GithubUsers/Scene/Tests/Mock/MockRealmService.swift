//
//  MockRealmService.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

@testable import GitUsers

import XCTest

class MockRealmService: IRealmService {
	
	var initailizeRealmCalled = 0
	func initailizeRealm() {
		initailizeRealmCalled += 1
	}
	
	var insertFavoriteUserToRealm = 0
	var insertFavoriteUserToRealmResultStub: Bool = true
	func insertFavoriteUserToRealm(withId id: Int, completion: @escaping (Bool) -> Void) {
		insertFavoriteUserToRealm += 1
		completion(insertFavoriteUserToRealmResultStub)
	}
	
	var queryFavoriteUserWithIdFromRealm = 0
	var queryFavoriteUserWithIdFromRealmResultStub: Bool = false
	func queryFavoriteUserWithIdFromRealm(withId id: Int, completion: @escaping (Bool) -> Void) {
		queryFavoriteUserWithIdFromRealm += 1
		completion(queryFavoriteUserWithIdFromRealmResultStub)
	}
	
}
