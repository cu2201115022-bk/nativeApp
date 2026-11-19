import SwiftUI

struct MainTab: View{
    @State private var selectedTab: Int = 0
    var body: some View{
        TabView(selection: $selectedTab){
            TabAView()
                .tabItem {
                    Image(selectedTab == 0 ? "icon_tab_a" : "icon_default")
                    Text("運行")
                }
                .tag(0)

            TabBView()
                .tabItem {
                    Image(selectedTab == 1 ? "icon_tab_b" : "icon_default")
                    Text("囃子")
                }
                .tag(1)

            TabCView()
                .tabItem {
                    Image(selectedTab == 2 ? "icon_tab_c" : "icon_default")
                    Text("連絡")
                }
                .tag(2)

            TabDView()
                .tabItem {
                    Image(selectedTab == 3 ? "icon_tab_d" : "icon_default")
                    Text("設定")
                }
                .tag(3)
        }
    }
}