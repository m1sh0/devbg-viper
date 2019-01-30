// VIPER Interface to the Module
protocol EventsDelegate: class {
    
}

// VIPER Interface for communication from Interactor -> Presenter
protocol EventsInteractorToPresenterInterface: class {
    
}

// VIPER Interface for communication from View -> Presenter
protocol EventsViewToPresenterInterface: class {
    func viewDidLoad()
}

// VIPER Interface for communication from Wireframe -> Presenter
protocol EventsWireframeToPresenterInterface: class {
    var delegate: EventsDelegate? { get }
    func set(delegate newDelegate: EventsDelegate?)
}
