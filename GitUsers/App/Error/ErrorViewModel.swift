//
//  ErrorViewModel.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import Foundation

public struct ErrorViewModel {
	public let title: String?
	public let message: String?
	
	public init(_ error: Error?) {
		self.title = nil
		self.message = error?.localizedDescription
	}
	
	public init(_ message: String?) {
		self.title = nil
		self.message = message
	}
	
	public init(_ nsError: NSError?) {
		let message = nsError?.userInfo["message"] as? String
		self.title = nil
		self.message = message
	}
	
	public init(_ title: String?, error: Error?) {
		self.title = title
		self.message = error?.localizedDescription
	}
	
	public init(_ title: String?, message: String?) {
		self.title = title
		self.message = message
	}
	
	public init(_ title: String?, nsError: NSError?) {
		let message = nsError?.userInfo["message"] as? String
		self.title = title
		self.message = message
	}
}
