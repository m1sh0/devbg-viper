import UIKit

class EventsView: UITableViewController {
    // MARK: - VIPER Stack
    weak var presenter: EventsViewToPresenterInterface!
    var data:[[String: String]]? = nil
    
    // MARK: - Instance Variables
    
    // MARK: - Outlets
    
    // MARK: - Operational
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
        cell.textLabel?.text = data?[indexPath.row]["name"]
        return cell
    }
}

// MARK: - Navigation Interface
extension EventsView: EventsNavigationInterface { }

// MARK: - Presenter to View Interface
extension EventsView: EventsPresenterToViewInterface {
    func insertData(data: [[String: String]]) {
        self.data = data
    }
    
}
