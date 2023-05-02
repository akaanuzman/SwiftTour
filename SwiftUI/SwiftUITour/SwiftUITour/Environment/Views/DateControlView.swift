import SwiftUI

struct DateControlView: View {
    @EnvironmentObject var userViewModel : UserViewModell
    var body: some View {
        Text(userViewModel.currentDate.description)
        Button("Date Reset") {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd HH:mm"
            userViewModel.currentDate = formatter.date(from: "2001/12/25") ?? Date()
        }
    }
}

struct DateControlView_Previews: PreviewProvider {
    static var previews: some View {
        DateControlView()
    }
}
