//
//  GitHubAPIService.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import Foundation
import SwiftyJSON

protocol IGitHubConfig {
	var githubUserURL: String { get }
	var githubUserRepositoriesURL: String { get }
	var githubSearchUserURL: String { get }
}

protocol IGitHubAPIService {
	func getGitHubUsers(completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void)
	func getGitHubUserRepositories(with username: String, completion: @escaping (Result<[IGithubRepositoriesModel], Error>) -> Void)
	func getGitHubSearchUsers(with parameter: [String: Any], completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void)
}

struct GitHubAPIService {
	let client: INetworkingService!
	let resourceAdapter: IGitHubResourceResponseAdapter & IGitHubResourceResponseErrorResourceAdapter
	let config: IConfigurationProvider!
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
	
	func getGitHubUserRepositories(with username: String, completion: @escaping (Result<[IGithubRepositoriesModel], Error>) -> Void) {
		client.request(url: config.githubUserRepositoriesURL.replacingOccurrences(of: "{username}", with: username), method: .get, parameters: nil) { result in
			switch result {
			case .success(let json):
				let resource = JSON(json ?? [])
				resourceAdapter.getGithubUserRepositories(data: resource) { response in
					completion(.success(response))
				}
			case .failure:
				resourceAdapter.githubServiceError { error in
					completion(.failure(error))
				}
			}
		}
	}
	
	func getGitHubSearchUsers(with parameter: [String: Any], completion: @escaping (Result<[IGitHubUserListsModel], Error>) -> Void) {
		client.request(url: config.githubSearchUserURL, method: .get, parameters: parameter) { result in
			switch result {
			case .success(let json):
				let resource = JSON(json ?? [])
				resourceAdapter.getGithubSearchUsers(data: resource["items"]) { response in
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
