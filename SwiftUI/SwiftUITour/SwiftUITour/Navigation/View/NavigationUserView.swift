import SwiftUI

struct NavigationUserView: View {
    @State private var isPresented : Bool = false
    
    var body: some View {
        NavigationView {
            List(NavigationUserModel.users) {
                item in
                NavigationLink {
                    UserDetailView(user: item) // navigate push page
                } label: {
                    Text(item.name)
                }
            } //.listStyle(.insetGrouped) // default
            .sheet(isPresented: $isPresented, content: {
                Button("Say hello! to sheet"){
                    isPresented.toggle()
                }
            })
            .navigationTitle(Text("Users"))
            .toolbar {
                ToolbarItem {
                    Button("Open sheet") {
                        isPresented.toggle()
                    }
                }
                ToolbarItem {
                    NavigationLink {
                        Text("Logout") // navigate push page
                    } label: {
                        Image(systemName: "rectangle.portrait.and.arrow.forward.fill")
                        // appbar actions
                    }
                }
            }
        }
    }
}

struct NavigationUserView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUserView()
    }
}
