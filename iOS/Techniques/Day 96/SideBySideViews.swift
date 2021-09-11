// SideBySideViews.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/working-with-two-side-by-side-views-in-swiftui

// MARK: - LIBRARIES -

import SwiftUI



struct SideBySideViews: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: Text("Secondary View")) {
                Text("Hello, World!")
                    .navigationBarTitle("Primary")
            }
            
            Text("Secondary")
        }
    }
}





// MARK: - PREVIEWS -

struct SideBySideViews_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SideBySideViews()
    }
}
