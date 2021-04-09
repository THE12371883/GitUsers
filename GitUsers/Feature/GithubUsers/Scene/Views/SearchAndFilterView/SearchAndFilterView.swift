//
//  SearchAndFilterView.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 7/4/2564 BE.
//

import UIKit

private enum Constants {
	static let sortByImageDefault = "sort_disable"
	static let sortByImageAscending = "sort_ascending"
	static let sortByImageDescending = "sort_descending"
}

protocol ISearchAndFilterDelegate: class {
	func clearSearchTextButtonDidTapped()
	func searchButtonDidTapped(searchText: String)
	
	func favoriteFilterDidTapped(isActive: Bool)
	func sortByDidTapped(sortType: SortType)
}

enum SortType {
	case `default`
	case alphabetDescending
	case alphabetAscending
}

class SearchAndFilterView: UIControl {

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var favoriteFilterButton: UIButton!
	@IBOutlet weak var sortByButton: UIButton!
	
	weak var delegate: ISearchAndFilterDelegate?
	
	var sortType: SortType = .default {
		didSet {
			updateFilterButton()
		}
	}
	
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
	
	func resetFilter() {
		favoriteFilterButton.isSelected = false
		sortByButton.isSelected = false
		sortType = .default
	}
	
	func hideKeyboard() {
		textField?.resignFirstResponder()
	}
	
	func updateFilterButton() {
		switch sortType {
		case .default:
			sortByButton.setImage(UIImage(named: Constants.sortByImageDefault), for: .normal)
		case .alphabetAscending:
			sortByButton.setImage(UIImage(named: Constants.sortByImageAscending), for: .normal)
		case .alphabetDescending:
			sortByButton.setImage(UIImage(named: Constants.sortByImageDescending), for: .normal)
		}
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
		switch sortType {
		case .default:
			delegate?.sortByDidTapped(sortType: .alphabetAscending)
		case .alphabetAscending:
			delegate?.sortByDidTapped(sortType: .alphabetDescending)
		case .alphabetDescending:
			delegate?.sortByDidTapped(sortType: .default)
		}
	}
}

// MARK: - UITextFieldDelegate

extension SearchAndFilterView: UITextFieldDelegate {
	func textFieldShouldClear(_ textField: UITextField) -> Bool {
		delegate?.clearSearchTextButtonDidTapped()
		return true
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		delegate?.searchButtonDidTapped(searchText: textField.text ?? "")
		return true
	}
}
