//
//  Singleton.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

class Singleton {
	static let shared = Singleton()
	
	let networkingService: INetworkingService!
	let githubAPIService: IGitHubAPIService!
	
	init() {
		networkingService = NetworkingService(contentTypeHeader: .normal)
		githubAPIService = GitHubAPIService(client: networkingService,
											resourceAdapter: GitHubResourceResponseAdapter(),
											config: ConfigurationProvider.default)
	}
}
