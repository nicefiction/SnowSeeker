// SizeClassView.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/using-groups-as-transparent-layout-containers
// https://developer.apple.com/documentation/swiftui/environmentvalues/horizontalsizeclass

// MARK: - LIBRARIES -

import SwiftUI


// MARK: - IntroView2 struct -

struct IntroView2: View {
    
    var body: some View {
        
        Group {
            Text("name: Dorothy Gale")
            Text("city: Oz")
            Text("age: 17")
        }
    }
}





// MARK: - SizeClassView struct -

struct SizeClassView: View {
    
    // MARK: PROPERTY WRAPPERS
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        if horizontalSizeClass == .compact {
            // VStack { IntroView2() }
            /// `Tip`: In situations like this ,
            /// where you have only one view inside a stack and it doesn’t take any parameters ,
            /// you can pass the view’s initializer directly to the VStack to make your code shorter :
            VStack(content: IntroView2.init)
        } else {
            // HStack { IntroView2() }
            /// `Tip`: In situations like this ,
            /// where you have only one view inside a stack and it doesn’t take any parameters ,
            /// you can pass the view’s initializer directly to the VStack to make your code shorter :
            HStack(content: IntroView2.init)
        }
    }
}





// MARK: - PREVIEWS -

struct SizeClassView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SizeClassView()
    }
}
