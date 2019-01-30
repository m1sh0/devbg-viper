import Foundation

class EventsPresenter {
    // MARK: - VIPER Stack
    weak var interactor: EventsPresenterToInteractorInterface!
    weak var view: EventsPresenterToViewInterface!
    weak var wireframe: EventsPresenterToWireframeInterface!
    
    // MARK: - Instance Variables
    weak var delegate: EventsDelegate?
    var moduleWireframe: Events {
        get {
            let mw = (self.wireframe as? Events)!
            return mw
        }
    }
    
    // MARK: - Operational
    
}

// MARK: - Interactor to Presenter Interface
extension EventsPresenter: EventsInteractorToPresenterInterface {
    
}

// MARK: - View to Presenter Interface
extension EventsPresenter: EventsViewToPresenterInterface {
    func viewDidLoad() {
        let data = interactor.loadData()
        view.insertData(data: data)
    }
}

// MARK: - Wireframe to Presenter Interface
extension EventsPresenter: EventsWireframeToPresenterInterface {
    func set(delegate newDelegate: EventsDelegate?) {
        delegate = newDelegate
    }
}
