import UIKit

class MainNavigationWireframe {
    // MARK: - VIPER Stack
    lazy var moduleInteractor = MainNavigationInteractor()
    lazy var modulePresenter = MainNavigationPresenter()
    lazy var moduleView: MainNavigationView = {
        let sb = MainNavigationWireframe.storyboard()
        let vc = (sb.instantiateViewController(withIdentifier: MainNavigationConstants.viewIdentifier) as? MainNavigationView)!
        _ = vc.view
        return vc
    }()
    
    // MARK: - Computed VIPER Variables
    lazy var presenter: MainNavigationWireframeToPresenterInterface = self.modulePresenter
    lazy var view: MainNavigationNavigationInterface = self.moduleView
    
    // MARK: - Instance Variables
    lazy var events = EventsWireframe()
    
    // MARK: - Initialization
    init() {
        let i = moduleInteractor
        let p = modulePresenter
        let v = moduleView
        
        i.presenter = p
        
        p.interactor = i
        p.view = v
        p.wireframe = self
        
        v.presenter = p
        
        (v.viewControllers?.first as! UINavigationController).viewControllers = [events.moduleView]
    }
    
    class func storyboard() -> UIStoryboard {
        return UIStoryboard(name: MainNavigationConstants.storyboardIdentifier,
                            bundle: Bundle(for: MainNavigationWireframe.self))
    }
    
    // MARK: - Operational
    
}

// MARK: - Module Interface
extension MainNavigationWireframe: MainNavigation {
    var delegate: MainNavigationDelegate? {
        get {
            return presenter.delegate
        }
        set {
            presenter.set(delegate: newValue)
        }
    }
}

// MARK: - Presenter to Wireframe Interface
extension MainNavigationWireframe: MainNavigationPresenterToWireframeInterface {
    
}
