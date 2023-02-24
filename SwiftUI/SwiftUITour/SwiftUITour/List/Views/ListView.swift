import SwiftUI

struct ListView: View {
    let profileItems = ItemModel.profileItems
    let settingItems = ItemModel.settingsItems
    var body: some View {
        List {
            Section {
                ForEach(profileItems) {
                    item in
                    HStack {
                        Image(systemName: item.icon)
                        Text(item.text).bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }.padding()
            } header: {
                Text("Profile operations")
            }
            Section {
                ForEach(settingItems) {
                    item in
                    HStack {
                        Image(systemName: item.icon)
                        Text(item.text).bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }.padding()
            } header: {
                Text("Settings")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
