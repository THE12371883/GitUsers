//
//  GithubRepositoriesModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import Foundation

protocol IGithubRepositoriesModel {
	var reposName: String? { get }
	var reposDescription: String? { get }
	var reposStarCount: Int? { get }
	var reposForkCount: Int? { get }
	var reposLastUpdated: Date? { get }
}

struct GithubRepositoriesModel: IGithubRepositoriesModel {
	var reposName: String?
	var reposDescription: String?
	var reposStarCount: Int?
	var reposForkCount: Int?
	var reposLastUpdated: Date?
	
	init(item: IGithubUserRepositoriesDatas) {
		self.reposName = item.reposName
		self.reposDescription = item.reposDescription
		self.reposStarCount = item.reposStarCount
		self.reposForkCount = item.reposForkCount
		self.reposLastUpdated = item.reposLastUpdated
	}
}
