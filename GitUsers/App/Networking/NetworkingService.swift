//
//  NetworkingService.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 6/4/2564 BE.
//

import UIKit
import Alamofire

protocol INetworkingService {
	func request(url: String, method: HTTPMethod, parameters: [String: Any]?, completion: @escaping (Result<Any?, Error>) -> Void)
}

struct NetworkingService {
	var contentTypeHeader: ContentTypeHTTP
}

extension NetworkingService: INetworkingService {
	
	private func createSessionManager() -> Session {
		let configuration = URLSessionConfiguration.default
		configuration.urlCache = nil
		configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
		configuration.timeoutIntervalForRequest = 60
		let serverTrustPolicies = ServerTrustManager(evaluators: ["": DisabledTrustEvaluator()])

		var sessionManager = Session(
			configuration: configuration, serverTrustManager: serverTrustPolicies)
		
		sessionManager = Session.default
		return sessionManager
	}
	
	private func header() -> HTTPHeaders {
		let headers: HTTPHeaders = [
			"Content-Type": contentTypeHeader.rawValue
		]
		return headers
	}
	
	func request(url: String, method: HTTPMethod, parameters: [String: Any]?, completion: @escaping (Result<Any?, Error>) -> Void) {
		let session = createSessionManager()
		let headers = header()
		session.request(url, method: method, parameters: parameters, headers: headers).responseJSON { (dataResponse) in
			if dataResponse.response?.statusCode == HTTPResponseCode.success.rawValue {
				switch dataResponse.result {
				case .success(let data):
					completion(.success(data))
				case .failure(let error):
					completion(.failure(error))
				}
			} else {
				completion(.failure(NetworkErrorType.serverError))
			}
		}
	}
}
