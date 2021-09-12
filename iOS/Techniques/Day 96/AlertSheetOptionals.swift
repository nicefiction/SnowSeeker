// AlertSheetOptionals.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/using-alert-and-sheet-with-optionals

// MARK: - LIBRARIES -

import SwiftUI



// MARK: - Human struct -

struct Human: Identifiable {
    
    var id: String = "Dorothy Gale"
}




// MARK: - AlertSheetOptionals struct -

struct AlertSheetOptionals: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isShowingAlert: Bool = false
    
    
    
    // MARK: - PROPERTIES
    
    @State private var tappedHuman: Human?
    
    /*
     Text("Hello, World!")
                 .onTapGesture {
                     self.selectedUser = User()
                     self.isShowingAlert = true
                 }
                 .alert(isPresented: $isShowingAlert) {
                     Alert(title: Text(selectedUser!.id))
                 }
     */
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack(spacing: 40) {
            /// Option 1:
            Text("Create Human")
                .onTapGesture {
                    tappedHuman = Human()
                }
                .alert(item: $tappedHuman) { (human: Human) in
                    Alert(title: Text("Human ID: \(human.id)"))
                }
            /// Option 2:
            Text("Toggle Boolean")
                .onTapGesture {
                    isShowingAlert.toggle()
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text("Human ID: N/A"))
                }
        }
        .font(.title)
    }
}





// MARK: - PREVIEWS -

struct AlertSheetOptionals_Previews: PreviewProvider {
    
    static var previews: some View {
        
        AlertSheetOptionals()
    }
}
