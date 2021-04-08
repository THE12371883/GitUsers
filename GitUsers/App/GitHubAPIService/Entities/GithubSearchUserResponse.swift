//
//  GithubSearchUserResponse.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 8/4/2564 BE.
//

import UIKit
import SwiftyJSON

protocol IGithubSearchUserData {
	var id: Int? { get }
	var loginName: String? { get }
	var name: String? { get }
	var avartarUrlString: String? { get }
	var gitHubUrlString: String? { get }
}

struct GithubSearchUserData: IGithubSearchUserData {
	var id: Int?
	var loginName: String?
	var name: String?
	var avartarUrlString: String?
	var gitHubUrlString: String?
}

// MARK: - GitHubAPIService + GithubSearchUserData
extension GithubSearchUserData {
	init(json: JSON) {
		self.id = json["id"].intValue
		self.loginName = json["login"].stringValue
		self.name = json["name"].stringValue
		self.avartarUrlString = json["avatar_url"].stringValue
		self.gitHubUrlString = json["html_url"].stringValue
	}
}
