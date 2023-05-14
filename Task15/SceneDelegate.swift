//
//  SceneDelegate.swift
//  Task15
//
//  Created by D K on 13.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            
            guard let windowScene = (scene as? UIWindowScene) else { return }
            
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = makeSettingsModule()
            self.window = window
            window.makeKeyAndVisible()
        }

    func makeSettingsModule() -> UIViewController {
        
        let view = TableViewController()
        view.controller = SettingsController(view: view)
        
        let viewController = UINavigationController(rootViewController: view)
        
        return viewController
    }
}

