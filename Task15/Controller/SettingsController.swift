
import UIKit

enum DownloadError: Error {
    case error
}

protocol TableViewInput {
    
    func setTitle(_ title: String)
    
    func updateTable()
    
    func updateCell(with indexPath: IndexPath)
    
}


protocol TableViewOutput {
    
    var cellModels: [DownloadCellModel] { get }
    
    func viewDidLoad()
    
    func didTapCell(with indexPath: IndexPath)
    
}


final class SettingsController {
    
    var cellModels: [DownloadCellModel] = []
    
    var view: TableViewInput
    
    init(view: TableViewInput) {
        
        self.view = view
    }
    
}

extension SettingsController: TableViewOutput {
    
    func viewDidLoad() {
        
        view.setTitle("Settings")
        
        cellModels = [
            DownloadCellModel(fileName: "file_01.pdf", immediatelyDownload: true),
            DownloadCellModel(fileName: "file_02.pdf"),
            DownloadCellModel(fileName: "file_03.pdf", error: DownloadError.error),
            DownloadCellModel(fileName: "file_04.pdf", immediatelyDownload: true),
            DownloadCellModel(fileName: "file_05.pdf", immediatelyDownload: true),
        ]
        
        view.updateTable()
           
    }
    
    func didTapCell(with indexPath: IndexPath) {

        
        var model = cellModels[indexPath.item].copy()
        model.isLoading = true
        cellModels[indexPath.item] = model
        view.updateCell(with: indexPath)
        
        
        print("🌕: ", indexPath.item, model)
    }
    
    @MainActor
    func didDownload(size: String, indexPath: IndexPath) {
        
        var model = cellModels[indexPath.item].copy()
        model.isLoading = false
        model.size = size
        print("✅ \(model)")
        cellModels[indexPath.item] = model
        view.updateCell(with: indexPath)
    }
    
}
