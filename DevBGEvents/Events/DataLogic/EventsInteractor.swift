import Foundation

class EventsInteractor {
    // MARK: - VIPER Stack
    weak var presenter: EventsInteractorToPresenterInterface!
    
    // MARK: - Instance Variables
    let dataService = MocDataService()
    
    // MARK: - Operational
    
}

// MARK: - Presenter To Interactor Interface
extension EventsInteractor: EventsPresenterToInteractorInterface {
    func loadData() -> [[String: String]] {
        return dataService.loadData()
    }
    
}
