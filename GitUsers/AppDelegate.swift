//
//  AppDelegate.swift
//  GitUsers
//
//  Created by Teravat Nepiyachat on 5/4/2564 BE.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		Singleton.shared.realmService.initailizeRealm()
		return true
	}
	
	func applicationDidBecomeActive(_ application: UIApplication) {
	}

	func applicationWillResignActive(_ application: UIApplication) {
	}

	func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
		return true
	}

}
