// VIPER Interface for manipulating the navigation of the view
protocol EventsNavigationInterface: class {

}

// VIPER Interface for communication from Presenter -> View
protocol EventsPresenterToViewInterface: class {
    func insertData(data: [[String: String]])
}
