import UIKit

class EventsWireframe {
    // MARK: - VIPER Stack
    lazy var moduleInteractor = EventsInteractor()
    // Uncomment to use a navigationController from storyboard
    /*
     lazy var moduleNavigationController: UINavigationController = {
     let sb = EventsWireframe.storyboard()
     let nc = (sb.instantiateViewController(withIdentifier: EventsConstants.navigationControllerIdentifier) as? UINavigationController)!
     return nc
     }()
     */
    lazy var modulePresenter = EventsPresenter()
    lazy var moduleView: EventsView = {
        let sb = EventsWireframe.storyboard()
        let vc = (sb.instantiateViewController(withIdentifier: EventsConstants.viewIdentifier) as? EventsView)!
        modulePresenter.view = vc
        vc.presenter = modulePresenter
        
        _ = vc.view
        return vc
    }()
    
    // MARK: - Computed VIPER Variables
    lazy var presenter: EventsWireframeToPresenterInterface = self.modulePresenter
    lazy var view: EventsNavigationInterface = self.moduleView
    
    // MARK: - Instance Variables
    
    // MARK: - Initialization
    init() {
        let i = moduleInteractor
        let p = modulePresenter
        i.presenter = p
        p.interactor = i
        
        let v = moduleView
        p.view = v
        p.wireframe = self
        
        v.presenter = p
    }
    
    class func storyboard() -> UIStoryboard {
        return UIStoryboard(name: EventsConstants.storyboardIdentifier,
                            bundle: Bundle(for: EventsWireframe.self))
    }
    
    // MARK: - Operational
    
}

// MARK: - Module Interface
extension EventsWireframe: Events {
    var delegate: EventsDelegate? {
        get {
            return presenter.delegate
        }
        set {
            presenter.set(delegate: newValue)
        }
    }
}

// MARK: - Presenter to Wireframe Interface
extension EventsWireframe: EventsPresenterToWireframeInterface {
    
}
