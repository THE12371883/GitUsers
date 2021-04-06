//
//  GitHubUserListsViewController.swift
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

private enum Constants {
	static let cellIdentifier: String = "cellGitHubUser"
	static let cellNibName: String = "GitHubUserListsTableViewCell"
	static let heightForRow: CGFloat = 100.0
}

protocol GitHubUserListsDisplayLogic: class {
	func show(users viewModel: GetGitHubUsers.ViewModel)
}

class GitHubUserListsViewController: UIViewController {
	
	// MARK: - Assembly
	var interactor: IGitHubUserListsInteractor!
	var router: IGitHubUserListsRouter!
	
	// MARK: - IBOutlets
	@IBOutlet weak var tableView: UITableView!
	
	// MARK: - Lifecycle
	deinit {
		print("deinit \("GitHubUserLists")ViewController")
	}
	
	class func newInstance() -> UIViewController {
		let storyboard = UIStoryboard(name: "GitHubUserLists", bundle: nil)
		if let viewController = storyboard.instantiateViewController(withIdentifier: "GitHubUserListsViewController") as? GitHubUserListsViewController {
			viewController.setup()
			return viewController
		}
		return UIViewController()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
		setupTableView()
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationItem.largeTitleDisplayMode = .always
		navigationItem.title = "GitHubUserLists"
		setNeedsStatusBarAppearanceUpdate()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .default
	}
	
}

// MARK: - Private

private extension GitHubUserListsViewController {
	
	func setup() {
		let viewController = self
		let presenter = GitHubUserListsPresenter(viewController: viewController)
		let worker = GitHubUserListsWorker()
		let interactor = GitHubUserListsInteractor(presenter: presenter, worker: worker)
		let router = GitHubUserListsRouter()
		viewController.interactor = interactor
		viewController.router = router
	}
	
	func setupUI() {
		
	}
	
	func setupTableView() {
		tableView.register(UINib(nibName: Constants.cellNibName, bundle: Bundle.main), forCellReuseIdentifier: Constants.cellIdentifier)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.estimatedRowHeight = Constants.heightForRow
		tableView.tableFooterView = UIView()
		tableView.rowHeight = UITableView.automaticDimension
	}
	
}

// MARK: - GitHubUserListsDisplayLogic

extension GitHubUserListsViewController: GitHubUserListsDisplayLogic {
	func show(users viewModel: GetGitHubUsers.ViewModel) {
		
	}
}

// MARK: - UITableViewDelegate & UITableViewDataSource

extension GitHubUserListsViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! GitHubUserListsTableViewCell
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return Constants.heightForRow
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
	}
}
