import SwiftUI

struct PropertyWrapperSampleView: View {
    @State var userWrapperModel : UserWrapperModel = UserWrapperModel(name: "Kaan", surname: "Uzman", age: "22")
    var body: some View {
        VStack {
            Text(userWrapperModel.fullName).font(.title2)
            TextField("Surname", text: $userWrapperModel.surname)
            TextField("Age", text: $userWrapperModel.age)
        }.padding()
    }
}

struct PropertyWrapperSampleView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperSampleView()
    }
}
