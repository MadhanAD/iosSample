
import Foundation
import Combine

struct ListData : Identifiable {
    var id = String()
    var title = String()
}


class ListDataStore : ObservableObject {
    @Published var listData = [ListData]()
}
