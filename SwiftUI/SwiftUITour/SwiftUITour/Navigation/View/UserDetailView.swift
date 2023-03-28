import SwiftUI

struct UserDetailView: View {
    let user : NavigationUserModel
    var body: some View {
        ZStack {
            Color.red.opacity(0.3)
            ZStack {
                RoundedRectangle(cornerRadius: 16).frame(width: 200,height: 100).foregroundColor(.red)
                Text(user.name).font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: NavigationUserModel(name: "ku43"))
    }
}
