
import UIKit


extension TableViewController: TableViewInput {
    
    func setTitle(_ title: String) {
        
        self.title = title
    }
    
    func updateTable() {
        
        tableView.reloadData()
    }
    
    func updateCell(with indexPath: IndexPath) {
     
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
}
