//
//  ConfigurationProvider.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

protocol IConfigurationProvider: IGitHubConfig { }

enum ConfigurationProvider: IConfigurationProvider {
	case `default`
	
	enum APIUrl {
		static let url = "https://api.github.com"
	}
	
	enum APIPaths {
		static let githubUser = "/users"
		static let githubRepositories = "/users/{username}/repos"
		static let githubSearchUser = "/search/users"
	}
	
	var githubUserURL: String {
		return APIUrl.url + APIPaths.githubUser
	}
	
	var githubUserRepositoriesURL: String {
		return APIUrl.url + APIPaths.githubRepositories
	}
	
	var githubSearchUserURL: String {
		return APIUrl.url + APIPaths.githubSearchUser
	}
}
