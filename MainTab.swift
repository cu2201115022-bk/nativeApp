import SwiftUI

struct MainTab: View{
    @state private var selectedTab: Int = 0
    var body: some View{
        TabView(selection: $selectedTab){
            Tab("運行", image: "car")    }
                .tag(0)
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}