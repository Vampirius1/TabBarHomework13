//
//  TabBarController.swift
//  TabBarHomework13
//
//  Created by Владислав on 25.03.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        
    }
    
    //                 MARK: - Setup TabBarController
    private func setupTabBarController() {
        
        let setOne = UINavigationController(rootViewController: QuestionsViewController())
        let setTwo = UINavigationController(rootViewController: AnswersViewController())
        let setThree = UINavigationController(rootViewController: CommentsViewController())
        
    viewControllers = [generateViewControllers(viewController: setOne, title: "Questions"),
    generateViewControllers(viewController: setTwo, title: "Answers"),
    generateViewControllers(viewController: setThree, title: "Comments")]
    }
    
//    MARK: - Generate ViewControllers
    private func generateViewControllers(viewController: UIViewController, title: String) -> UIViewController {
        viewController.tabBarItem.title = title
        return viewController
    }
}

//      MARK: - Extensions
extension TabBarController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func loadView() {
        super.loadView()
    }
}
