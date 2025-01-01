import SwiftUI

struct MainTabView: View {
    @State private var isShowingSearch = false
    let model: CardModel
    var body: some View {
        NavigationView {
            TabView {
            
                Text("Inbox View")
                
                .tabItem {
                    Image(systemName: "envelope")
                    
                }
                .tag(0)
                
                CardStackView()
                .tabItem {
                    Image(systemName: "dog")
                }
                .tag(1)
                
                CurrentUserProfileView(model: model, user: MockData.users[0], animal: MockData.animals[0])
                .tabItem {
                    Image(systemName: "person")
      
                }
                .tag(2)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isShowingSearch = true
                    }) {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
            .sheet(isPresented: $isShowingSearch) {
                SearchView()
            }
        }
    }
}

struct SearchView: View {
    var body: some View {
        NavigationView {
            Text("This is the Search View")
                .navigationTitle("Search")
        }
    }
}

#Preview {
    MainTabView(model: CardModel(animal: MockData.animals[1]))
}
