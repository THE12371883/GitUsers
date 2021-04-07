//
//  GitHubUserReposCellModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

struct GitHubUserReposCellModel {
	var reposName: String?
	var reposDescription: String?
	var reposStarCount: String?
	var reposForkCount: String?
	var reposLastUpdated: String?
	
	init(item: IGithubUserRepositoriesViewModel) {
		self.reposName = item.reposName
		self.reposDescription = item.reposDescription
		self.reposStarCount = item.reposStarCount
		self.reposForkCount = item.reposForkCount
		self.reposLastUpdated = item.reposLastUpdated
	}
}
