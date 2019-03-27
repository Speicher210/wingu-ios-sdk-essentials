//
//  AppDelegate.swift
//  wingu-ios-sdk-essentials
//
//  Created by JakubMazur on 04/24/2018.
//  Copyright (c) 2018 JakubMazur. All rights reserved.
//

import UIKit
import winguSDKEssential

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    lazy var location: WinguLocations = {
        let location = WinguLocations(configuration: WinguConfiguration.userDefaults)
        location.delegate = self
        return location
    }()
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        NotificationsManager.requestNotificationsPermission(configuration: WinguConfiguration.userDefaults) { (_,_) in }
        self.location.useLaunchOptions(launchOptions)
        self.location.start()
        return true
    }
}

extension AppDelegate: WinguLocationsDelegate {
    func winguChannels(_ channels: [Channel]) {
        print(channels)
        // Callback for channels in your area. Always return full collection of wingu channels available in your location.
    }
    
    func winguUnseenChannels(_ channels: [Channel]) {
        // Unseen channels, as an extension for `winguChannels(_ channels: [Channel])` returns only channels that was previously unseen or content was modified.
    }
    
    func notificationReceived(_ channel: Channel?) {
        //whenever user will tap on push notification to enter app Channel will be ready here to pass to your view controller.
    }
}
