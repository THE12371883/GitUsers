//
//  SearchAndFilterView.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

protocol ISearchAndFilterDelegate: class {
	func clearSearchTextButtonDidTapped()
	func searchButtonDidTapped(searchText: String)
	
	func favoriteFilterDidTapped(isActive: Bool)
	func sortByDidTapped(sortType: SortType)
}

enum SortType {
	case descending
	case ascending
}

class SearchAndFilterView: UIControl {

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var favoriteFilterButton: UIButton!
	@IBOutlet weak var sortByButton: UIButton!
	
	weak var delegate: ISearchAndFilterDelegate?
	
	deinit {
		print("SearchAndFilterView")
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		setupTextField()
		setupButton()
	}
	
}

// MARK: - SearchAndFilterView

extension SearchAndFilterView {
	func setupTextField() {
		textField.delegate = self
		textField.clearButtonMode = .whileEditing
		textField.returnKeyType = .search
		textField.keyboardType = .default
		textField.autocorrectionType = .no
		textField.autocapitalizationType = .none
	}
	
	func setupButton() {
		favoriteFilterButton.addTarget(self, action: #selector(self.favoriteFilterButtonDidTapped(sender:)), for: .touchUpInside)
		sortByButton.addTarget(self, action: #selector(self.sortByButtonDidTapped(sender:)), for: .touchUpInside)
	}
}

// MARK: - Action

extension SearchAndFilterView {
	@objc
	func favoriteFilterButtonDidTapped(sender: UIButton) {
		if sender.isSelected {
			sender.isSelected = false
		} else {
			sender.isSelected = true
		}
		delegate?.favoriteFilterDidTapped(isActive: sender.isSelected)
	}
	
	@objc
	func sortByButtonDidTapped(sender: UIButton) {
		if sender.isSelected {
			sender.isSelected = false
			delegate?.sortByDidTapped(sortType: .descending)
		} else {
			sender.isSelected = true
			delegate?.sortByDidTapped(sortType: .ascending)
		}
	}
}

// MARK: - UITextFieldDelegate

extension SearchAndFilterView: UITextFieldDelegate {
	func textFieldShouldClear(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		delegate?.clearSearchTextButtonDidTapped()
		return true
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		delegate?.searchButtonDidTapped(searchText: textField.text ?? "")
		return true
	}
}
