import SwiftUI
import Kingfisher

struct UserView: View {
    @StateObject var userViewModel : UserViewModel = UserViewModel(userService: UserService())
    
    var body: some View {
        if userViewModel.user != nil{
            List(userViewModel.user?.data ?? []) {
                UserCardItem(model: $0)
            }
        } else {
            DotsIndicatorView()
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserCardItem: View {
    let model: Datum
    var body: some View {
        HStack {
            KFImage(URL(string: model.avatar))
                .resizable()
                .frame(width: 48,height: 48)
            VStack(alignment: .leading) {
                Text("\(model.firstName) \(model.lastName)")
                Text(model.email)
            }
        }
    }
}
