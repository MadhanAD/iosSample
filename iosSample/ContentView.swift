
import SwiftUI
import Combine
struct ContentView: View {
    
    @ObservedObject var dataList = ListDataStore()
    
    init() {
        self.loadData()
    }
    
    var body: some View {
        NavigationView {
            VStack {
            
                List {
                    ForEach(self.dataList.listData) { data in
                        
                        NavigationLink(destination: DetailCard(titleText: data.title)) {
                            Text(data.title)
                        }
                        
                    }.onDelete(perform: { indexSet in
                        
                    })
                }.navigationBarTitle("List Items")
                
            }.frame(minHeight: 0,maxHeight: .infinity).background(Color.green)
        }
    }
    
    func loadData() {
        var listId = String(self.dataList.listData.count + 1)
        dataList.listData.append(ListData(id: listId, title: "Text \(listId)"))
        listId = String(self.dataList.listData.count + 1)
        dataList.listData.append(ListData(id: listId, title: "Text \(listId)"))
        listId = String(self.dataList.listData.count + 1)
        dataList.listData.append(ListData(id: listId, title: "Text \(listId)"))
        listId = String(self.dataList.listData.count + 1)
        dataList.listData.append(ListData(id: listId, title: "Text \(listId)"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
