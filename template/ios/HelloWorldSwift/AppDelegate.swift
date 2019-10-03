//
//  AppDelegate.swift
//  HelloWorldSwift
//
//  Created by Glenna L Buford on 03.10.19.
//

import UIKit
import React

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate, RCTBridgeDelegate {
    public var window: UIWindow?
    
    public func application(_ application: UIApplication,
                            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {

        let bridge =  RCTBridge(delegate: self, launchOptions: launchOptions)
        let reactView = RCTRootView(bridge: bridge!,
                                    moduleName: "HelloWorldSwift",
                                    initialProperties: nil)
        
        reactView.backgroundColor = UIColor.lightGray
        
        let rootVC = UIViewController()
        rootVC.view = reactView
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
          
        return true
    }
    
    public func sourceURL(for bridge: RCTBridge!) -> URL! {
        return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index",
                                                                 fallbackResource: nil)
    }
}



