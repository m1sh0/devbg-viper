// VIPER Interface to the Module
protocol MainNavigationDelegate: class {

}

// VIPER Interface for communication from Interactor -> Presenter
protocol MainNavigationInteractorToPresenterInterface: class {

}

// VIPER Interface for communication from View -> Presenter
protocol MainNavigationViewToPresenterInterface: class {

}

// VIPER Interface for communication from Wireframe -> Presenter
protocol MainNavigationWireframeToPresenterInterface: class {
        var delegate: MainNavigationDelegate? { get }
        func set(delegate newDelegate: MainNavigationDelegate?)
}
