//
//  SceneDelegate.swift
//  ButtonViewController
//
//  Created by IM Mac-11 on 2024-11-04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Initialize the main window with the provided window scene
        let window = UIWindow(windowScene: windowScene)
        
        // Set up the initial view controller inside a navigation controller
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        // Set the navigation controller as the root view controller
        window.rootViewController = navigationController
        self.window = window
        
        // Make the window key and visible
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
    }

}
