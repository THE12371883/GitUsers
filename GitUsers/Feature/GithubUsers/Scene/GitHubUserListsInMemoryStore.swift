//
//  GitHubUserListsInMemoryStore.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

protocol IGitHubUserListsInMemoryStore {
	var gitHubUserListsModel: [IGitHubUserListsModel] { get set }
}

class GitHubUserListsInMemoryStore: IGitHubUserListsInMemoryStore {
	var gitHubUserListsModel: [IGitHubUserListsModel] = []
}
