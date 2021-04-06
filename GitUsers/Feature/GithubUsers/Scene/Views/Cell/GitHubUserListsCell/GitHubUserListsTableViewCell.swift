//
//  GitHubUserListsTableViewCell.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 5/4/2564 BE.
//

import UIKit

class GitHubUserListsTableViewCell: UITableViewCell {
	
	@IBOutlet weak var cellImage: UIImageView!
	@IBOutlet weak var cellName: UILabel!
	@IBOutlet weak var cellGithubUrl: UILabel!
	
	// MARK: - ViewModel
	var viewModel: GitHubUserListsCellModel? { didSet { reloadData() } }
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		setupCell()
		
	}
	
	override func setSelected(_ selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)
		selectionStyle = .gray
		
	}
	
}

// MARK: - Private GitHubUserListsTableViewCell

private extension GitHubUserListsTableViewCell {
	
	func setupCell() {

	}

	func reloadData() {
		cellName.text = viewModel?.gitHubUserName
		cellGithubUrl.text = viewModel?.gitHubURLString
	}
}
