//
//  MainCoordinator.swift
//  Expanses
//
//  Created by Pedro Mota on 25/01/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MonthListViewController()
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func showMonthExpanseDetail() {
        let monthExpanceDetailViewController = MonthExpansesDetailViewController()
        monthExpanceDetailViewController.coordinator = self
        navigationController.pushViewController(monthExpanceDetailViewController, animated: true)
    }
    
}
