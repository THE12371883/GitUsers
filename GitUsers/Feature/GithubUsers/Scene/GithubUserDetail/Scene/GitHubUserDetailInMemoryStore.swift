//
//  GitHubUserDetailInMemoryStore.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

protocol IGitHubUserDetailInMemoryStore {
	var gitHubUserModel: IGitHubUserListsModel? { get set }
}

class GitHubUserDetailInMemoryStore: IGitHubUserDetailInMemoryStore {
	var gitHubUserModel: IGitHubUserListsModel?
}
