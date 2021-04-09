//
//  GithubUserRepositoriesResponse.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit
import SwiftyJSON

private enum Constants {
	static let dateFormatLocaleEN = "en_US_POSIX"
	static let dateFormatter = "yyyy-MM-dd'T'HH:mm:ssZ"
}

protocol IGithubUserRepositoriesDatas {
	var reposName: String? { get }
	var reposDescription: String? { get }
	var reposStarCount: Int? { get }
	var reposForkCount: Int? { get }
	var reposLastUpdated: Date? { get }
}

struct GithubUserRepositoriesDatas: IGithubUserRepositoriesDatas {
	var reposName: String?
	var reposDescription: String?
	var reposStarCount: Int?
	var reposForkCount: Int?
	var reposLastUpdated: Date?
}

// MARK: - GitHubAPIService + GithubUserRepositoriesDatas
extension GithubUserRepositoriesDatas {
	init(json: JSON) {
		self.reposName = json["name"].stringValue
		self.reposDescription = json["description"].stringValue
		self.reposStarCount = json["stargazers_count"].intValue
		self.reposForkCount = json["forks_count"].intValue
		self.reposLastUpdated = date(from: json["updated_at"].stringValue)
	}
}

// MARK: - Private GithubUserRepositoriesDatas
private extension GithubUserRepositoriesDatas {
	func date(from dateString: String) -> Date? {
		
		let calendarIdentifier: Calendar.Identifier = .gregorian
		let locale = Constants.dateFormatLocaleEN
		let calendar = Calendar(identifier: calendarIdentifier)
		
		let dateFormatter = DateFormatter()
		dateFormatter.locale = Locale(identifier: locale)
		dateFormatter.calendar = calendar
		dateFormatter.dateFormat = Constants.dateFormatter
		let date = dateFormatter.date(from: dateString)
		return date
	}
}
