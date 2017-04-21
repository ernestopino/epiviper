//
//  {{ module_info.file_name }}
//  {{ module_info.project_name }}
//
//  Created by {{ developer.name }} on {{ date }}.
//  Copyright © {{ year }} {{ developer.company }}. All rights reserved.
//

import UIKit

class {{ prefix }}{{ module_info.name }}Interactor: NSObject, {{ prefix }}{{ module_info.name }}InteractorInputProtocol {
    var presenter: {{ prefix }}{{ module_info.name }}InteractorOutputProtocol?
    var dataManager: {{ prefix }}{{ module_info.name }}DataManagerProtocol?
}
