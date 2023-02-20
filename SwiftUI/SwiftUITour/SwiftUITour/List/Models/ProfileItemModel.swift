import Foundation


struct ItemModel : Identifiable {
    let id : UUID = UUID()
    let icon : String
    let text : String
}

extension ItemModel {
    static let profileItems : Array<ItemModel> = [
        ItemModel(icon: "person", text: "Profile"),
        ItemModel(icon: "highlighter", text: "Edit"),
        ItemModel(icon: "arrow.up.bin", text: "Update"),
        ItemModel(icon: "trash.fill", text: "Delete"),
    ]
    
    static let settingsItems : Array<ItemModel> = [
        ItemModel(icon: "key.fill", text: "Password"),
        ItemModel(icon: "bell.fill", text: "Notification"),
        ItemModel(icon: "bookmark.fill", text: "Saved"),
        ItemModel(icon: "gearshape.fill", text: "General"),
        ItemModel(icon: "lock.fill", text: "Privacy & Security"),
    ]
}
