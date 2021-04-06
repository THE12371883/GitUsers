//
//  ConfigurationProvider.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit

protocol IConfigurationProvider {
	var githubUserURL: String { get }
}

enum ConfigurationProvider: IConfigurationProvider {
	case `default`
	
	enum APIUrl {
		static let url = "https://api.github.com"
	}
	
	enum APIPaths {
		static let githubUser = "/users"
	}
	
	var githubUserURL: String {
		return APIUrl.url + APIPaths.githubUser
	}
}
