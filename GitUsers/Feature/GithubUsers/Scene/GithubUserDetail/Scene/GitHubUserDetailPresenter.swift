//
//  GitHubUserDetailPresenter.swift
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

protocol IGitHubUserDetailPresenter {
	
}

struct GitHubUserDetailPresenter {
	
	weak var viewController: GitHubUserDetailDisplayLogic?
	
	init(viewController: GitHubUserDetailDisplayLogic?) {
		self.viewController = viewController
	}
	
}

// MARK: - IGitHubUserDetailPresenter

extension GitHubUserDetailPresenter: IGitHubUserDetailPresenter {
	
}
