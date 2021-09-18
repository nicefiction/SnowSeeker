// ResortDetailsView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct ResortDetailsView: View {
    
    // MARK: - PROPERTIES
    
    let resort: Resort
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var size: String {
        
        switch resort.size {
        case 1: return "Small"
        case 2: return "Medium"
        default: return "Large"
        }
    }
    
    
    var price: String {
        
        return String(repeating: "$",
                      count: Int(resort.price))
    }
    
    
    var body: some View {
        
//        VStack {
        Group {
            Text("Size: \(size)")
                .layoutPriority(1)
            Spacer()
                .frame(height: 0)
            Text("Price: \(price)")
                .layoutPriority(1)
        }
    }
}





// MARK: - PREVIEWS -

struct ResortDetailsView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ResortDetailsView(resort: Resort.example)
    }
}
