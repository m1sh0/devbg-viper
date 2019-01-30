// VIPER Module Constants
struct MainNavigationConstants {
        // Uncomment to utilize a navigation contoller from storyboard
        //static let navigationControllerIdentifier = "MainNavigationNavigationController"
        static let storyboardIdentifier = "MainNavigation"
        static let viewIdentifier = "MainNavigationView"
}

// Interface Abstraction for working with the VIPER Module
protocol MainNavigation: class {
        var delegate: MainNavigationDelegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol MainNavigationPresenterToWireframeInterface: class {

}
