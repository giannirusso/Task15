
import UIKit


protocol ReusableCell: AnyObject {
    
    static var reuseIdentifier: String { get }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.numberOfCellsInSection[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let typeId = tableModel.cellType(indexPath: indexPath)

        switch typeId {
            
        case "CustomCell":
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: typeId, for: indexPath) as? CustomTableViewCell
            else {
                return UITableViewCell()
            }
            cell.titleLabel.text = tableModel.titleArray[indexPath.item]
            return cell
            
        case "SwitchCell":
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: typeId, for: indexPath) as? SwitchTableViewCell
            else {
                return UITableViewCell()
            }
            cell.titleLabel.text = tableModel.titleArray[indexPath.item]
            return cell
        default:
            return UITableViewCell()
        }
    }
}

extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        controller?.didTapCell(with: indexPath)
    }
}
