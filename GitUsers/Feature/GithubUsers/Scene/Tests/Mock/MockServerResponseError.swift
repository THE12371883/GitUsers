//
//  MockServerResponseError.swift
//  GitUsersTests
//
//  Created by Teravat Nepiyachat on 9/4/2564 BE.
//

@testable import GitUsers
import XCTest

struct MockServerResponseError: IServerResponseError {
	var message: String?
	
	var name: String?
	
	var status: Int?
}
