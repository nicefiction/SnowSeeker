// SkiDetailsView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct SkiDetailsView: View {
    
    // MARK: - PROPERTIES
    
    let resort: Resort
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        VStack {
            Text("Elevation: \(resort.elevation) \(resort.elevation == 1 ? "meter" : "meters")")
            Text("Snow depth: \(resort.snowDepth) \(resort.snowDepth == 1 ? "centimeter" : "centimeters")")
        }
    }
}





// MARK: - PREVIEWS -

struct SkiDetailsView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SkiDetailsView(resort: Resort.example)
    }
}
