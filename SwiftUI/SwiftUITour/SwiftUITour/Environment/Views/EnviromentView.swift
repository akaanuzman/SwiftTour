import SwiftUI

struct EnviromentView: View {
    @Environment(\.verticalSizeClass) var verticalSize
    @StateObject var userViewModel = UserViewModel()
    var body: some View {
        NavigationView {
            VStack{
                Text(userViewModel.currentDate.description)
                HStack {
                    verticalSize == .regular ? Spacer.spacer16x : Spacer.spacer64x
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    verticalSize == .regular ? Spacer.spacer16x : Spacer.spacer64x
                }
                NavigationLink {
                    DateControlView()
                } label: {
                    Text("go to date control page")
                }

            }
        }.environmentObject(userViewModel)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView()
    }
}
