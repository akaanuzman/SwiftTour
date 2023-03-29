import SwiftUI

struct TabbarView: View {
    @State private var selectedIndex = TabbarTagEnum.home
    let tabs : [TabbarModel]
    let views : [AnyView]
    var body: some View {
        TabView(selection: $selectedIndex,
                content: {
                ForEach(0..<views.count) { i in
                    views[i].tabItem {
                        Image(systemName: tabs[i].icon)
                        Text(tabs[i].label).tag(tabs[i].tag)
                }
            }
        })
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView(tabs: TabbarModel.tabs,
                   views: [
                    AnyView(Text("Home Page")),
                            AnyView(Text("Profile Page")),
                            ])
    }
}
