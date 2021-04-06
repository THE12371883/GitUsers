//
//  ServerResponseError.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import Foundation

protocol IServerResponseError: Error {
	var message: String? { get }
	var name: String? { get }
	var status: Int? { get }
}

struct ServerResponseError: IServerResponseError {
	let message: String?
	let name: String?
	let status: Int?
	
	init(message: String?, name: String?, status: Int?) {
		self.message = message
		self.name = name
		self.status = status
	}
}
