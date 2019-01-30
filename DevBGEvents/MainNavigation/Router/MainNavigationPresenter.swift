import Foundation

class MainNavigationPresenter {
        // MARK: - VIPER Stack
        weak var interactor: MainNavigationPresenterToInteractorInterface!
        weak var view: MainNavigationPresenterToViewInterface!
        weak var wireframe: MainNavigationPresenterToWireframeInterface!

        // MARK: - Instance Variables
        weak var delegate: MainNavigationDelegate?
        var moduleWireframe: MainNavigation {
                get {
                        let mw = (self.wireframe as? MainNavigation)!
                        return mw
                }
        }

        // MARK: - Operational

}

// MARK: - Interactor to Presenter Interface
extension MainNavigationPresenter: MainNavigationInteractorToPresenterInterface {

}

// MARK: - View to Presenter Interface
extension MainNavigationPresenter: MainNavigationViewToPresenterInterface {

}

// MARK: - Wireframe to Presenter Interface
extension MainNavigationPresenter: MainNavigationWireframeToPresenterInterface {
        func set(delegate newDelegate: MainNavigationDelegate?) {
                delegate = newDelegate
        }
}
