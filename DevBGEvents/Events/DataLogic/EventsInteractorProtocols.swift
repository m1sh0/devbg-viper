// VIPER Interface for communication from Presenter to Interactor
protocol EventsPresenterToInteractorInterface: class {
    func loadData() -> [[String: String]]
}
