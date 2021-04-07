//
//  GitHubUserReposTableViewCell.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

class GitHubUserReposTableViewCell: UITableViewCell {
	
	@IBOutlet weak var cellReposNameLabel: UILabel!
	@IBOutlet weak var cellReposDescriptionLabel: UILabel!
	@IBOutlet weak var cellStarCount: UILabel!
	@IBOutlet weak var cellForkCount: UILabel!
	@IBOutlet weak var cellReposLastUpdated: UILabel!
	
	// MARK: - ViewModel
	var viewModel: GitHubUserReposCellModel? { didSet { reloadData() } }
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		selectionStyle = .none
		
	}
	
}

// MARK: - Private GitHubUserReposTableViewCell

private extension GitHubUserReposTableViewCell {

	func reloadData() {
		cellReposNameLabel.text = viewModel?.reposName
		cellReposDescriptionLabel.text = viewModel?.reposDescription
		cellStarCount.text = viewModel?.reposStarCount
		cellForkCount.text = viewModel?.reposForkCount
		cellReposLastUpdated.text = viewModel?.reposLastUpdated
	}
}
