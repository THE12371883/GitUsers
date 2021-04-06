//
//  GitHubAPIService.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import Foundation
import SwiftyJSON

protocol IGitHubAPIService {
	func getGitHubUsers(completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void)
}

struct GitHubAPIService {
	let client: INetworkingService!
	let resourceAdapter: IGitHubResourceResponseAdapter & IGitHubResourceResponseErrorResourceAdapter
	let config: ConfigurationProvider!
}

// MARK: - IGitHubAPIService

extension GitHubAPIService: IGitHubAPIService {
	func getGitHubUsers(completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		client.request(url: config.githubUserURL, method: .get, parameters: nil) { result in
			switch result {
			case .success(let json):
				let resource = JSON(json ?? [])
				resourceAdapter.getGithubUsers(data: resource) { response in
					completion(.success(response))
				}
			case .failure:
				resourceAdapter.githubServiceError { error in
					completion(.failure(error))
				}
			}
		}
	}
}
