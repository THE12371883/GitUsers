//
//  GitHubUserListsTableViewCell.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 5/4/2564 BE.
//

import UIKit

protocol IGitHubUserListsCellDelegate: AnyObject {
	func didSelectCell(userId: Int, isSelected: Bool, index: Int)
}

class GitHubUserListsTableViewCell: UITableViewCell {
	
	@IBOutlet weak var cellImage: UIImageView!
	@IBOutlet weak var cellName: UILabel!
	@IBOutlet weak var cellGithubUrl: UILabel!
	@IBOutlet weak var favoriteButton: UIButton!
	
	weak var delegate: IGitHubUserListsCellDelegate?
	
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
		favoriteButton?.addTarget(self, action: #selector(self.favoriteButtonDidTap(sender:)), for: .touchUpInside)
	}

	func reloadData() {
		
		cellName.text = viewModel?.gitHubUserName
		cellGithubUrl.text = viewModel?.gitHubURLString
		
		if let imageUrl = viewModel?.gitHubImageUrl {
			cellImage.load(url: imageUrl)
		}
		
		if let isFavoriteUser = viewModel?.isFavoriteUser {
			favoriteButton.isSelected = isFavoriteUser
		}
	}
	
	@objc
	func favoriteButtonDidTap(sender: UIButton) {
		
		if sender.isSelected {
			sender.isSelected = false
		} else {
			sender.isSelected = true
		}
		
		guard let id = viewModel?.userId, let index = viewModel?.rowIndex else {
			return
		}
		delegate?.didSelectCell(userId: id, isSelected: sender.isSelected, index: index)
	}
}
