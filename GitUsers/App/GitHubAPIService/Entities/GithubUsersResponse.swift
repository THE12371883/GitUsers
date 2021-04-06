//
//  GithubUserDatas.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import SwiftyJSON

protocol IGithubUserDatas {
	var id: Int? { get }
	var loginName: String? { get }
	var name: String? { get }
	var avartarUrlString: String? { get }
	var gitHubUrlString: String? { get }
}

struct GithubUserDatas: IGithubUserDatas {
	var id: Int?
	var loginName: String?
	var name: String?
	var avartarUrlString: String?
	var gitHubUrlString: String?
}

// MARK: - GitHubAPIService + GithubUserDatas
extension GithubUserDatas {
	init(json: JSON) {
		self.id = json["id"].intValue
		self.loginName = json["login"].stringValue
		self.name = json["name"].stringValue
		self.avartarUrlString = json["avatar_url"].stringValue
		self.gitHubUrlString = json["html_url"].stringValue
	}
}
