// VIPER Module Constants
struct EventsConstants {
        // Uncomment to utilize a navigation contoller from storyboard
        //static let navigationControllerIdentifier = "EventsNavigationController"
        static let storyboardIdentifier = "Events"
        static let viewIdentifier = "EventsView"
}

// Interface Abstraction for working with the VIPER Module
protocol Events: class {
        var delegate: EventsDelegate? { get set }
}

// VIPER Interface for communication from Presenter -> Wireframe
protocol EventsPresenterToWireframeInterface: class {

}
