// AlertSheetOptionals.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/using-alert-and-sheet-with-optionals
/// SwiftUI has two ways of creating alerts and sheets , and so far we’ve only been using one :
/// `1` a binding to a Boolean that shows the alert or sheet when the Boolean becomes true .
/// `2` The second option isn’t used quite so often ,
/// but is really useful for the few times you need it :
/// You can use an `optional Identifiable object` as your condition ,
/// and the alert or sheet will be shown when that object has a value .

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
    @State private var anotherTappedHuman: Human?
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack(spacing: 40) {
            /// Option 1:
            Text("Create Human")
                .onTapGesture {
                    // tappedHuman = Human()
                    tappedHuman = nil
                    /// OLIVIER : The nil value does not cause the app to crash .
                }
                .alert(item: $tappedHuman) { (human: Human) in
                    Alert(title: Text("Human ID: \(human.id)"))
                    /// `NOTE`As soon as the alert is dismissed ,
                    /// SwiftUI sets `tappedHuman` back to `nil`.
                    /// This might seem like a simple piece of functionality ,
                    /// but it is simpler and safer than the alternative — Option 2 .
                }
            /// Option 2:
            Text("Toggle Boolean")
                .onTapGesture {
                    anotherTappedHuman = nil
                    isShowingAlert.toggle()
                }
                .alert(isPresented: $isShowingAlert) {
                    
                    guard let _anotherTappedHuman = anotherTappedHuman
                    else {
                        return Alert(title: Text("Human ID: N/A"))
                    }
                    
                    return Alert(title: Text("Human ID: \(_anotherTappedHuman.id)"))
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
