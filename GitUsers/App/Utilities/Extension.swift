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
	
	public func loadWithSaturationAdjustment(url: URL, byValue: CGFloat) {
		if byValue < 1 {
			kf.setImage(with: url, options: [.processor(BlackWhiteProcessor())])
			return
		} else {
			load(url: url)
		}
	}
}
