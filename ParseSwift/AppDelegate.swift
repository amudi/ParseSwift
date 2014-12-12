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
        Parse.enableLocalDatastore()
        Parse.setApplicationId("your_application_id", clientKey: "your_client_key")
        PFUser.enableAutomaticUser()
        let defaultACL = PFACL()
        defaultACL.setPublicReadAccess(true);
        PFACL.setDefaultACL(defaultACL, withAccessForCurrentUser: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as ViewController
        self.window?.rootViewController?.navigationController?.popToViewController(viewController, animated: false)
        self.window?.makeKeyAndVisible()
        
//        self.testQuery()
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

    private func testQuery() {
        let geoPoint = PFGeoPoint(latitude: 32.8, longitude: -117.15)
        var query = PFQuery(className: "Question")
        query.whereKey("location", nearGeoPoint:geoPoint)
        query.findObjectsInBackgroundWithBlock { (objects: [AnyObject]!, error: NSError!) -> Void in
            if (error != nil) {
                print(error)
            }
            print(objects)
        }
    }
}

