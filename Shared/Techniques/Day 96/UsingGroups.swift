// UsingGroups.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/using-groups-as-transparent-layout-containers

// MARK: - LIBRARIES -

import SwiftUI


// MARK: - IntroView struct -

struct IntroView: View {
    
    var body: some View {
        
        Group {
            Text("name: Dorothy Gale")
            Text("city: Oz")
            Text("age: 17")
        }
    }
}




// MARK: - UsingGroups struct -

struct UsingGroups: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @State private var isVStack: Bool = false
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        Group {
            if isVStack {
                VStack {
                    IntroView()
                }
            } else {
                HStack {
                    IntroView()
                }
            }
        }
        .onTapGesture {
            isVStack.toggle()
        }
    }
}





// MARK: - PREVIEWS -

struct UsingGroups_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UsingGroups()
    }
}
