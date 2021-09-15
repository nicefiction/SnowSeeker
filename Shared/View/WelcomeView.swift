// WelcomeView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct WelcomeView: View {
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Text("Welcome to SnowSeeker")
            Text("Please select a resort from the left-hand menu; \nswipe from the left edge to show it.")
                .foregroundColor(.secondary)
        }
    }
}





// MARK: - PREVIEWS -

struct WelcomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        WelcomeView()
    }
}
