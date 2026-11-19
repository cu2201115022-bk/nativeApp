import SwiftUI

struct MainTab: View{
    @State private var selectedTab: Int = 0
    var body: some View{
        TabView(selection: $selectedTab){
            ScheduleTab()
                .tabItem {
                    Image(selectedTab == 0 ? "icon_tab_a" : "icon_default")
                    Text("運行")
                }
                .tag(0)

            HayashiTab()
                .tabItem {
                    Image(selectedTab == 1 ? "icon_tab_b" : "icon_default")
                    Text("囃子")
                }
                .tag(1)

            ContactTab()
                .tabItem {
                    Image(selectedTab == 2 ? "icon_tab_c" : "icon_default")
                    Text("連絡")
                }
                .tag(2)

            OtherTab()
                .tabItem {
                    selectedTab == 3 ? Image(systemName: "square.grid.2x2") : Image("icon_default")
                    Text("ツール")
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTab()
}
