//
//  GitHubResourceResponseAdapter.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import SwiftyJSON

protocol IGitHubResourceResponseAdapter {
	func getGithubUsers(data: JSON, completion: @escaping ([IGitHubUserListsModel]) -> Void)
}

protocol IGitHubResourceResponseErrorResourceAdapter {
	func githubServiceError(errorData: JSON, completion: @escaping (ServerResponseError) -> Void)
}

struct GitHubResourceResponseAdapter { }

// MARK: - IGitHubResourceResponseAdapter

extension GitHubResourceResponseAdapter: IGitHubResourceResponseAdapter {
	func getGithubUsers(data: JSON, completion: @escaping ([IGitHubUserListsModel]) -> Void) {
		let datas = data.arrayValue.compactMap { GithubUserDatas(json: $0) }
		let models = datas.compactMap { GitHubUserListsModel(item: $0) }
		completion(models)
	}
}
