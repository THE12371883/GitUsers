//
//  GithubUserRepositoriesViewModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit
import Foundation

private enum Constants {
	static let dateFormatLocaleEN = "en_US_POSIX"
	static let dateDisplayDefault = "-"
	static let displayDateFormat = "d MMM yyyy"
}

protocol IGithubUserRepositoriesViewModel {
	var reposName: String? { get }
	var reposDescription: String? { get }
	var reposStarCount: String? { get }
	var reposForkCount: String? { get }
	var reposLastUpdated: String? { get }
}

struct GithubUserRepositoriesViewModel: IGithubUserRepositoriesViewModel {
	var reposName: String?
	var reposDescription: String?
	var reposStarCount: String?
	var reposForkCount: String?
	var reposLastUpdated: String?
	
	init(item: IGithubRepositoriesModel) {
		self.reposName = item.reposName
		self.reposDescription = item.reposDescription
		self.reposStarCount = "\(item.reposStarCount ?? 0)"
		self.reposForkCount = "\(item.reposForkCount ?? 0)"
		guard let date = item.reposLastUpdated else {
			self.reposLastUpdated = Constants.dateDisplayDefault
			return
		}
		self.reposLastUpdated = dateDisplay(date: date)
	}
}

// MARK: - Private GithubUserRepositoriesViewModel
private extension GithubUserRepositoriesViewModel {
	func dateDisplay(date: Date) -> String {
		
		let calendarIdentifier: Calendar.Identifier = .gregorian
		let locale = Constants.dateFormatLocaleEN
		let calendar = Calendar(identifier: calendarIdentifier)
		
		let dateFormatter = DateFormatter()
		dateFormatter.locale = Locale(identifier: locale)
		dateFormatter.calendar = calendar
		
		dateFormatter.dateFormat = Constants.displayDateFormat
		let dateDisplay = dateFormatter.string(from: date)
		
		return dateDisplay
	}
}
