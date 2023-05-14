import UIKit


final class TableViewController: UIViewController {
    
    var controller: TableViewOutput?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        registerCells(tableView)
        tableView.separatorStyle = .singleLine
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemGroupedBackground
        tableView.sectionHeaderHeight = 20
        
        return tableView
    }()
    
   
    
    var tableModel: TableModel = TableModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        controller?.viewDidLoad()
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func registerCells(_ tableView: UITableView) {
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: "SwitchCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableModel.tableSections.count // Returns N sections in the table view
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableModel.tableSections[section]
        }
    
}
