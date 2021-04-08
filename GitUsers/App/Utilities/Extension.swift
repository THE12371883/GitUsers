//
//  Extension.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import Kingfisher

extension UIImageView {
	public func load(url: URL) {
		kf.setImage(with: url)
	}
}

extension NSLayoutConstraint {
	public static func activate(_ constraints: NSLayoutConstraint...) {
		constraints.forEach {
			$0.isActive = true
		}
	}
}

extension UIEdgeInsets {
	public static func all(_ value: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: value, left: value, bottom: value, right: value)
	}
}

// swiftlint:disable force_cast
// swiftlint:disable force_unwrapping

extension UIView {
	public class func fromNib<T: UIView>(bundle: Bundle) -> T {
		return bundle.loadNibNamed(String(describing: self), owner: nil, options: nil)![0] as! T
	}
}

// swiftlint:enable force_cast
// swiftlint:enable force_unwrapping
