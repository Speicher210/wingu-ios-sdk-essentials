//
//  WinguConfiguration+Extension.swift
//  wingu-ios-sdk-essentials_Example
//
//  Created by Jakub Mazur on 27/03/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import winguSDKEssential

extension WinguConfiguration {
    
    static var userDefaults: WinguConfiguration {
        var configuration: WinguConfiguration = WinguConfiguration.defaultConfiguration
        /// API
        configuration.apiKey = "0b0136ef-5d21-4adb-a9d7-b9f5bb50ce82" // TODO: Remove
        /// Settings
        configuration.returnOnlyChanelsWithContent = true
        
        /// Analytics
        configuration.analytics.shouldStopCollectingAutomaticData = true
        
        /// Notifications
        configuration.notifications.shouldSendNotifications = true
        configuration.notifications.onlyNotificationsWithContentUpdate = false
        configuration.notifications.rediscoverNotificationTime = 10 // TODO: Remove
        
        /// Beacons
        configuration.beacons.lostOffset = 10  //TODO: Remove
        
        return configuration
    }
}
