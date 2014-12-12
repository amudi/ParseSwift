//
//  AppDelegate.swift
//  ParseSwift2
//
//  Created by Amudi Sebastian on 11/12/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        Parse.setApplicationId("your_application_id", clientKey: "your_client_key")
        PFUser.enableAutomaticUser()
        let defaultACL = PFACL();
        defaultACL.setPublicReadAccess(true);
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }
}

