//
//  {{ module_info.file_name }}
//  {{ module_info.project_name }}
//
//  Created by {{ developer.name }} on {{ date }}.
//  Copyright © {{ year }} {{ developer.company }}. All rights reserved.
//

import UIKit

class {{ prefix }}{{ module_info.name }}Router: NSObject, {{ prefix }}{{ module_info.name }}RouterProtocol {
    
    var viewController: {{ prefix }}{{ module_info.name }}ViewProtocol?
    var parentViewController: UIViewController?
    
    override init() {
        super.init()
        configureModule()
    }
    
    func presentModule(fromViewController viewController: UIViewController) {
        parentViewController = viewController
        // TODO: Present view controller
    }
    
    // MARK: - Helper methods
    
    private func configureModule() {
        // Create VIPER components
        let viewController = nil // TODO: Instanciate module view controller
        let interactor = {{ prefix }}{{ module_info.name }}Interactor()
        let presenter = {{ prefix }}{{ module_info.name }}Presenter()
        let dataManager = {{ prefix }}{{ module_info.name }}DataManager()
        
        // Connecting components
        viewController?.eventHandler = presenter
        interactor.presenter = presenter as {{ prefix }}{{ module_info.name }}InteractorOutputProtocol
        interactor.dataManager = dataManager
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = self
        
        // Keep reference to view controller
        self.viewController = viewController
    }
}
