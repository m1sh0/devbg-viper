import UIKit

class MainNavigationView: UITabBarController {
        // MARK: - VIPER Stack
        weak var presenter: MainNavigationViewToPresenterInterface!

        // MARK: - Instance Variables

        // MARK: - Outlets

        // MARK: - Operational

}

// MARK: - Navigation Interface
extension MainNavigationView: MainNavigationNavigationInterface { }

// MARK: - Presenter to View Interface
extension MainNavigationView: MainNavigationPresenterToViewInterface {

}
