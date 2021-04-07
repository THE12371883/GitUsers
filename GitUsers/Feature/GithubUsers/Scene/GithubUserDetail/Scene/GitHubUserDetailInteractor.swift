//
//  GitHubUserDetailInteractor.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//  Copyright (c) 2564 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IGitHubUserDetailInteractor {
	func getUserProfile(request: GetUserProfile.Request)
	func getUserRepositories(request: GetGitHubUserRepos.Request)
}

struct GitHubUserDetailInteractor {
	
	let presenter: IGitHubUserDetailPresenter
	let worker: IGitHubUserDetailWorker
	
	init(presenter: IGitHubUserDetailPresenter, worker: IGitHubUserDetailWorker) {
		self.presenter = presenter
		self.worker = worker
	}
	
}

// MARK: - IGitHubUserDetailInteractor

extension GitHubUserDetailInteractor: IGitHubUserDetailInteractor {
	func getUserProfile(request: GetUserProfile.Request) {
		worker.getUserProfile { result in
			self.presenter.present(userProfile: GetUserProfile.Response(gitHubUserModel: result))
		}
	}
	
	func getUserRepositories(request: GetGitHubUserRepos.Request) {
		worker.getUserRepositories { result in
			switch result {
			case .success(let response):
				self.presenter.present(repositories: GetGitHubUserRepos.Response(gitHubUserReposModel: response))
			case .failure(let error):
				self.presenter.present(error: error)
			}
		}
	}
}
