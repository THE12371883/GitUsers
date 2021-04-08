//
//  GitHubUserListsPresenter.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 5/4/2564 BE.
//  Copyright (c) 2564 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol IGitHubUserListsPresenter {
	func present(users response: GetGitHubUsers.Response)
	func present(setFavorite response: SetFavoriteUser.Response)
	func present(error: Error)
	func present(userDetail response: SelectedGitHubUser.Response)
	func present(loadingView response: ShowLoading.Response)
	func present(favoriteFilter response: SelectedFavoriteFilter.Response)
	func present(sortData response: SelectedSortData.Response)
	func present(searchUser response: SearchGithubUser.Response)
}

struct GitHubUserListsPresenter {
	
	weak var viewController: GitHubUserListsDisplayLogic?
	
	init(viewController: GitHubUserListsDisplayLogic?) {
		self.viewController = viewController
	}
	
}

// MARK: - IGitHubUserListsPresenter

extension GitHubUserListsPresenter: IGitHubUserListsPresenter {
	func present(users response: GetGitHubUsers.Response) {
		let viewModel = response.githubUsersModel.compactMap { GitHubUserListsViewModel(item: $0) }
		viewController?.show(users: GetGitHubUsers.ViewModel(githubUsersViewModel: viewModel))
	}
	
	func present(setFavorite response: SetFavoriteUser.Response) {
		viewController?.show(setFavorite: SetFavoriteUser.ViewModel(index: response.index, isFavorite: response.isFavorite))
	}
	
	func present(error: Error) {
		if let serverError = error as? ServerResponseError {
			viewController?.show(error: ErrorViewModel(serverError.name, message: serverError.message))
		} else {
			viewController?.show(error: ErrorViewModel("Message", message: error.localizedDescription))
		}
		
	}
	
	func present(userDetail response: SelectedGitHubUser.Response) {
		viewController?.show(userDetail: SelectedGitHubUser.ViewModel(githubUserModel: response.githubUserModel))
	}
	
	func present(loadingView response: ShowLoading.Response) {
		viewController?.show(loadingView: ShowLoading.ViewModel(isShowLoading: response.isShowLoading))
	}
	
	func present(favoriteFilter response: SelectedFavoriteFilter.Response) {
		let viewModel = response.githubUsersModel.compactMap { GitHubUserListsViewModel(item: $0) }
		viewController?.show(users: GetGitHubUsers.ViewModel(githubUsersViewModel: viewModel))
	}
	
	func present(sortData response: SelectedSortData.Response) {
		let viewModel = response.githubUsersModel.compactMap { GitHubUserListsViewModel(item: $0) }
		viewController?.show(sortData: SelectedSortData.ViewModel(githubUsersViewModel: viewModel))
	}
	
	func present(searchUser response: SearchGithubUser.Response) {
		let viewModel = response.githubUsersModel.compactMap { GitHubUserListsViewModel(item: $0) }
		viewController?.show(searchUser: SearchGithubUser.ViewModel(githubUsersViewModel: viewModel))
	}
}
